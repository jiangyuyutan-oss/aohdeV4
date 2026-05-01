---
name: smali-reverse-engineering
description: Guide AI agents to correctly reverse engineer SMALI code for Android games. Focuses on UI construction, game editing, register management, and code reuse patterns for innovation.
arguments:
  - name: target_apk
    description: Path to the APK file or decompiled SMALI directory
    required: false
  - name: modification_goal
    description: What the user wants to achieve (e.g., UI modification, game logic change, feature addition)
    required: false
  - name: workspace
    description: Absolute path to the workspace directory
    required: false
---

# SMALI Reverse Engineering Guide

Transform Android game reverse engineering tasks into systematic, safe, and effective SMALI code modifications through structured analysis and code reuse patterns.

## Overview

This skill implements a SMALI reverse engineering workflow that:
1. Analyzes game structure and identifies key components
2. Maps register usage and resolves register conflicts
3. Reuses existing game code patterns for safe modifications
4. Builds and modifies UI components following game conventions
5. Validates modifications before integration

## Glossaries

### SMALI Basics

SMALI is the assembly-like language used in Android's Dalvik Virtual Machine (DVM) and Android Runtime (ART). Key concepts:

| Term | Description | Example |
|------|-------------|---------|
| `.method` | Method definition | `.method public onCreate(Landroid/os/Bundle;)V` |
| `.registers` / `.locals` | Register count declaration | `.registers 5` or `.locals 3` |
| `v` registers | Local variables | `v0`, `v1`, `v2`... |
| `p` registers | Parameters | `p0` (this), `p1` (first param)... |
| `const` | Load constant | `const/4 v0, 0x1` |
| `invoke` | Method call | `invoke-virtual {v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V` |
| `if-*` | Conditional branch | `if-eq v0, v1, :cond_0` |
| `goto` | Unconditional branch | `goto :label_0` |
| `.prologue` | Method start marker | `.prologue` |
| `.line` | Source line mapping | `.line 42` |

### Register Calculation

| Method Type | Formula | Example |
|-------------|---------|---------|
| Static method | `p0` = first parameter | `.method static foo(I)V` has `.registers 2`: `v0`, `p0` |
| Instance method | `p0` = this, `p1` = first parameter | `.method bar(I)V` has `.registers 3`: `v0`, `v1`, `p0`, `p1` |
| Wide types (long/double) | Occupy 2 registers | `J` or `D` type params consume 2 slots |

### Common SMALI Types

| Java Type | SMALI Type |
|-----------|------------|
| `void` | `V` |
| `boolean` | `Z` |
| `byte` | `B` |
| `short` | `S` |
| `char` | `C` |
| `int` | `I` |
| `long` | `J` |
| `float` | `F` |
| `double` | `D` |
| `Object` | `Ljava/lang/Object;` |
| `String` | `Ljava/lang/String;` |
| `int[]` | `[I` |
| `String[]` | `[Ljava/lang/String;` |

## Workflow

### Phase 1: Initial Analysis

1. **Identify Game Structure**
   - Locate entry point (`AndroidManifest.xml` -> main activity)
   - Map package structure: `smali/`, `smali_classes2/`, etc.
   - Identify key modules: UI, game logic, network, resources

2. **Decompile and Organize**
   ```bash
   # Decompile APK
   apktool d game.apk -o game_decompiled
   # Navigate to smali directory
   cd game_decompiled/smali
   ```

3. **Find Target Code**
   - Search for keywords: `grep -r "target_string" smali/`
   - Identify activities: `find smali/ -name "*Activity*.smali"`
   - Locate game loop: Search for `onDraw`, `render`, `update` methods

### Phase 2: Register Analysis and Resolution

1. **Count Registers Correctly**
   ```smali
   # Example: Instance method with 2 params
   .method public doSomething(ILjava/lang/String;)V
       .registers 5
       # v0, v1 are locals
       # p0 = this
       # p1 = int parameter
       # p2 = String parameter
   ```

2. **Resolve Register Conflicts**
   - Always recount when adding new code
   - Use `.locals N` instead of `.registers N` when possible (auto-calculates `p` registers)
   - Track register usage throughout method:
     ```smali
     # Document register purpose
     # v0 - temp calculation
     # v1 - loop counter
     # v2 - result object
     ```

3. **Wide Type Handling**
   ```smali
   # long/double occupies 2 registers
   .method test(J)V
       .registers 4
       # v0 = local
       # p0 = this
       # p1, p2 = long parameter (occupies 2 registers!)
       # p3 is NOT available - would be out of bounds
   ```

### Phase 3: Code Reuse Patterns

1. **Find Similar Existing Code**
   - Search for similar UI components in the game
   - Locate existing method signatures and call patterns
   - Copy register allocation patterns from working methods

2. **Template Reuse Strategy**
   ```smali
   # STEP 1: Find a working example in the game
   # Search for: invoke-virtual.*findViewById
   # Copy the pattern:

   # Original game code:
   invoke-virtual {p0}, Lcom/game/MainActivity;->getWindow()Landroid/view/Window;
   move-result-object v0
   invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
   move-result-object v0

   # STEP 2: Adapt for your use (keep same register pattern)
   invoke-virtual {p0}, Lcom/game/MainActivity;->getWindow()Landroid/view/Window;
   move-result-object v2  # Changed v0 -> v2 to avoid conflict
   invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;
   move-result-object v2
   ```

3. **Hook Insertion Points**
   - Method entry (after `.prologue`)
   - Before return statements
   - After specific game events (score change, level complete)
   - In UI lifecycle methods (`onCreate`, `onResume`, `onPause`)

### Phase 4: UI Construction and Modification

1. **Analyze Existing UI Patterns**
   ```smali
   # Find how the game creates views
   grep -r "new-instance.*Button" smali/
   grep -r "new-instance.*TextView" smali/
   grep -r "new-instance.*LinearLayout" smali/
   ```

2. **Create UI Components (Follow Game Style)**
   ```smali
   # Typical Android UI creation in SMALI
   # 1. Create instance
   new-instance v0, Landroid/widget/LinearLayout;

   # 2. Call constructor
   invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

   # 3. Set properties
   const/4 v1, 0x1
   invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

   # 4. Add to parent
   invoke-virtual {p0, v0}, Lcom/game/Activity;->setContentView(Landroid/view/View;)V
   ```

3. **XML Layout Loading**
   ```smali
   # If game uses XML layouts
   const v1, 0x7f030001  # layout resource ID (find in res/values/public.xml)
   invoke-virtual {p0, v1}, Lcom/game/Activity;->setContentView(I)V
   ```

4. **View Binding Pattern**
   ```smali
   # findViewById pattern (reuse from game)
   const v1, 0x7f080001  # view ID from res/values/public.xml
   invoke-virtual {p0, v1}, Lcom/game/Activity;->findViewById(I)Landroid/view/View;
   move-result-object v0
   check-cast v0, Landroid/widget/TextView;
   ```

### Phase 5: Game Logic Modification

1. **Identify Game State Variables**
   - Search for score, lives, level variables
   - Find getter/setter methods
   - Trace variable flow through methods

2. **Safe Modification Points**
   ```smali
   # Example: Modify score comparison
   # Original:
   iget v0, p0, Lcom/game/Player;->score:I
   const/16 v1, 0x3e8  # 1000
   if-ge v0, v1, :cond_win

   # Modified (always win):
   iget v0, p0, Lcom/game/Player;->score:I
   const/16 v1, 0x0    # Changed to 0
   if-ge v0, v1, :cond_win
   ```

3. **Method Override Pattern**
   ```smali
   # To override a method, find the original and modify:
   # 1. Keep same signature
   # 2. Keep same .registers count
   # 3. Insert your logic
   # 4. Preserve original flow or redirect
   ```

### Phase 6: Validation and Testing

1. **Rebuild APK**
   ```bash
   apktool b game_decompiled -o game_modified.apk
   ```

2. **Sign APK**
   ```bash
   # Generate key (first time only)
   keytool -genkey -v -keystore debug.keystore -alias debug -keyalg RSA -keysize 2048 -validity 10000

   # Sign APK
   jarsigner -verbose -keystore debug.keystore game_modified.apk debug
   ```

3. **Install and Test**
   ```bash
   adb install -r game_modified.apk
   adb logcat | grep -i "your_tag"
   ```

## Common Issues and Solutions

### Register Confusion

**Problem**: "Register v3 out of range"

**Solution**:
1. Recount all registers in the method
2. Check if wide types (long/double) consume 2 registers
3. Verify `.registers` or `.locals` declaration matches actual usage
4. Use this checklist:
   ```
   Total registers = local_count + param_count
   For instance method: param_count includes 'this' (p0)
   For static method: param_count = actual params
   Long/Double params: each consumes 2 register slots
   ```

### Method Signature Mismatch

**Problem**: "Verifier error: expected X got Y"

**Solution**:
1. Check return type matches actual return
2. Verify parameter types in invoke calls
3. Ensure all code paths return a value (for non-void methods)
4. Use `check-cast` when narrowing object types

### UI Not Showing

**Problem**: Modified UI doesn't appear

**Solution**:
1. Verify view is added to visible hierarchy
2. Check layout parameters (width, height)
3. Ensure proper context is passed to constructors
4. Verify IDs match `res/values/public.xml`

### Game Crashes on Modification

**Problem**: Game crashes after SMALI edit

**Solution**:
1. Check logcat for exact error
2. Verify register counts are correct
3. Ensure all branches lead to valid code
4. Check that method signatures match calls
5. Revert changes incrementally to find the issue

## Code Reuse Guidelines

### When to Reuse vs Create New

| Scenario | Recommendation |
|----------|----------------|
| Similar UI component exists | Reuse and adapt existing pattern |
| Game has helper methods | Call existing helpers |
| New feature type | Study similar features, adapt pattern |
| Complex logic modification | Find existing logic, modify conditions |

### Finding Reusable Code

1. **Search by Function**
   ```bash
   # Find UI creation
   grep -r "new-instance.*Landroid/widget" smali/

   # Find network calls
   grep -r "invoke.*HttpURLConnection" smali/

   # Find game state changes
   grep -r "iput.*score" smali/
   ```

2. **Analyze Call Graph**
   - Find who calls the target method
   - Find what the target method calls
   - Identify the flow of data

3. **Extract Patterns**
   ```smali
   # Document the pattern you find:
   # Pattern: Create Button and add to layout
   # Registers: v0=new button, v1=context, v2=layout params
   # Steps:
   #   1. new-instance v0, Landroid/widget/Button;
   #   2. invoke-direct {v0, v1}, ...<init>(Landroid/content/Context;)V
   #   3. invoke-virtual {v0, v2}, ...setLayoutParams(...)V
   #   4. invoke-virtual {v3, v0}, ...addView(Landroid/view/View;)V
   ```

## Best Practices

### Safety Rules

1. **Backup Original**: Always keep original SMALI files
2. **Small Changes**: Make one change at a time, test frequently
3. **Preserve Signatures**: Never change method signatures unless necessary
4. **Match Game Style**: Follow existing code patterns and conventions
5. **Document Changes**: Comment your modifications in SMALI

### Register Management

1. **Track Usage**: Document what each register holds
2. **Reuse Registers**: When a register's value is no longer needed, reuse it
3. **Avoid Conflicts**: Check all existing code before assigning registers
4. **Wide Types**: Remember long/double use 2 registers

### UI Development

1. **Study First**: Understand how the game builds UI before modifying
2. **Use Existing IDs**: Reuse resource IDs when possible
3. **Match Theme**: Follow game's visual style and patterns
4. **Test Incrementally**: Add one UI element at a time

### Code Innovation

1. **Extend, Don't Replace**: Add to existing functionality rather than replacing
2. **Use Game APIs**: Leverage existing game classes and methods
3. **Follow Patterns**: Match the game's architectural style
4. **Minimal Intrusion**: Change as little as possible to achieve the goal

## Decision Points

During the workflow, consider:

| Topic | Questions to Ask |
|-------|------------------|
| Target Selection | Which class/method is the best modification point? |
| Register Allocation | Are there enough registers? Can I reuse any? |
| Code Reuse | Is there existing code I can copy and adapt? |
| UI Approach | Should I modify XML or create views programmatically? |
| Hook Location | Where is the safest place to inject new code? |
| Fallback Plan | What if my modification causes crashes? |

## Output Files

When modifications are complete:

```
game_decompiled/
├── smali/
│   └── com/game/
│       ├── MainActivity.smali          # Modified files
│       └── views/
│           └── CustomView.smali        # New files (if any)
├── AndroidManifest.xml                 # Modified if needed
└── res/
    └── values/
        └── public.xml                  # Updated resource IDs
```

## Notes

- Always work on a copy of the original APK
- Test each modification before proceeding to the next
- Use `smali` and `baksmali` tools for compilation/decompilation
- Reference Android documentation for API signatures
- When in doubt, copy patterns from working game code
- Keep modifications minimal and focused
- Document all changes for future reference

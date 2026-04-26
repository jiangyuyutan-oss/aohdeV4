.class public Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;
.super Ljava/lang/Object;
.source "EditorManager.java"


# static fields
.field public static GROWTH_RATE:I

.field public static LEVEL_OF_PORT:I

.field public static NEIGHBORING_PROVINCES:I

.field public static PROVINCE_CONTINENTS:I

.field public static PROVINCE_MAP_REGIONS:I

.field public static PROVINCE_NAME:I

.field public static PROVINCE_PIXMAP:I

.field public static PROVINCE_REGIONS:I

.field public static SHIFT_ARMY:I

.field public static SHIFT_PORT:I

.field public static TERRAIN_TYPE:I

.field public static WASTELAND:I


# instance fields
.field private inUseID:I

.field private lEditors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->SHIFT_ARMY:I

    .line 19
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->SHIFT_PORT:I

    .line 20
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->LEVEL_OF_PORT:I

    .line 21
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_PIXMAP:I

    .line 22
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_CONTINENTS:I

    .line 23
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_REGIONS:I

    .line 24
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->WASTELAND:I

    .line 25
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->TERRAIN_TYPE:I

    .line 26
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->NEIGHBORING_PROVINCES:I

    .line 27
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->GROWTH_RATE:I

    .line 28
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_MAP_REGIONS:I

    .line 29
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_NAME:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 35
    return-void
.end method

.method private final addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I
    .registers 3
    .param p1, "nEditor"  # Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;

    .line 38
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 4
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 46
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    if-ltz v0, :cond_f

    .line 47
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 49
    :cond_f
    return-void
.end method

.method public final keyDown(I)Z
    .registers 4
    .param p1, "keycode"  # I

    .line 125
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    if-ltz v0, :cond_11

    .line 126
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;->keyDown(I)V

    .line 127
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final keyUp(I)Z
    .registers 4
    .param p1, "keycode"  # I

    .line 134
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    if-ltz v0, :cond_11

    .line 135
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;

    invoke-virtual {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;->keyUp(I)V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final resetInUseEditors()V
    .registers 4

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 164
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;->setInUse(Z)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    .end local v0  # "i":I
    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 168
    return-void
.end method

.method public final setInUse(Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;)V
    .registers 4
    .param p1, "eEditor"  # Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 171
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager$1;->$SwitchMap$age$of$civilizations2$jakowski$lukasz$Editor$Editors:[I

    invoke-virtual {p1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_fe

    goto/16 :goto_fd

    .line 245
    :pswitch_d  #0xb
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_NAME:I

    if-gez v0, :cond_1c

    .line 246
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceName;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_NAME:I

    .line 249
    :cond_1c
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_NAME:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    goto/16 :goto_fd

    .line 238
    :pswitch_22  #0xa
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->NEIGHBORING_PROVINCES:I

    if-gez v0, :cond_31

    .line 239
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_NeighboringProvinces;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_NeighboringProvinces;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->NEIGHBORING_PROVINCES:I

    .line 242
    :cond_31
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->NEIGHBORING_PROVINCES:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 243
    goto/16 :goto_fd

    .line 231
    :pswitch_37  #0x9
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->GROWTH_RATE:I

    if-gez v0, :cond_46

    .line 232
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_GrowthRate;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_GrowthRate;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->GROWTH_RATE:I

    .line 235
    :cond_46
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->GROWTH_RATE:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 236
    goto/16 :goto_fd

    .line 224
    :pswitch_4c  #0x8
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_MAP_REGIONS:I

    if-gez v0, :cond_5b

    .line 225
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_MapRegions;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_MapRegions;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_MAP_REGIONS:I

    .line 228
    :cond_5b
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_MAP_REGIONS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 229
    goto/16 :goto_fd

    .line 217
    :pswitch_61  #0x7
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_REGIONS:I

    if-gez v0, :cond_70

    .line 218
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_Regions;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_Regions;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_REGIONS:I

    .line 221
    :cond_70
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_REGIONS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 222
    goto/16 :goto_fd

    .line 210
    :pswitch_76  #0x6
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_CONTINENTS:I

    if-gez v0, :cond_85

    .line 211
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_Continents;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_Continents;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_CONTINENTS:I

    .line 214
    :cond_85
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_CONTINENTS:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 215
    goto/16 :goto_fd

    .line 201
    :pswitch_8b  #0x5
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_PIXMAP:I

    if-gez v0, :cond_9a

    .line 202
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ProvinceTexture;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_PIXMAP:I

    .line 205
    :cond_9a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_PIXMAP:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;->setInUse(Z)V

    .line 207
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->PROVINCE_PIXMAP:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 208
    goto :goto_fd

    .line 194
    :pswitch_ad  #0x4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->LEVEL_OF_PORT:I

    if-gez v0, :cond_bc

    .line 195
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_LevelOfPort;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_LevelOfPort;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->LEVEL_OF_PORT:I

    .line 198
    :cond_bc
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->LEVEL_OF_PORT:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 199
    goto :goto_fd

    .line 187
    :pswitch_c1  #0x3
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->SHIFT_PORT:I

    if-gez v0, :cond_d0

    .line 188
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->SHIFT_PORT:I

    .line 191
    :cond_d0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->SHIFT_PORT:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 192
    goto :goto_fd

    .line 180
    :pswitch_d5  #0x2
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->SHIFT_ARMY:I

    if-gez v0, :cond_e4

    .line 181
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftArmy;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftArmy;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->SHIFT_ARMY:I

    .line 184
    :cond_e4
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->SHIFT_ARMY:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 185
    goto :goto_fd

    .line 173
    :pswitch_e9  #0x1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->TERRAIN_TYPE:I

    if-gez v0, :cond_f8

    .line 174
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_TerrainType;-><init>()V

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->addEditor(Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->TERRAIN_TYPE:I

    .line 177
    :cond_f8
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->TERRAIN_TYPE:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    .line 178
    nop

    .line 252
    :goto_fd
    return-void

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_e9  #00000001
        :pswitch_d5  #00000002
        :pswitch_c1  #00000003
        :pswitch_ad  #00000004
        :pswitch_8b  #00000005
        :pswitch_76  #00000006
        :pswitch_61  #00000007
        :pswitch_4c  #00000008
        :pswitch_37  #00000009
        :pswitch_22  #0000000a
        :pswitch_d  #0000000b
    .end packed-switch
.end method

.method public touchDown(IIII)V
    .registers 7
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 143
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    if-ltz v0, :cond_f

    .line 144
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;->touchDown(IIII)V

    .line 146
    :cond_f
    return-void
.end method

.method public touchDragged(III)V
    .registers 6
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I

    .line 149
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    if-ltz v0, :cond_f

    .line 150
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;

    invoke-virtual {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;->touchDragged(III)V

    .line 152
    :cond_f
    return-void
.end method

.method public touchUp(IIII)V
    .registers 7
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 155
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->inUseID:I

    if-ltz v0, :cond_f

    .line 156
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->lEditors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;->touchUp(IIII)V

    .line 158
    :cond_f
    return-void
.end method

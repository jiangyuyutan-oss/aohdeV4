.class public Lteam/rainfall/ctap/CTAP;
.super Ljava/lang/Object;
.source "CTAP.java"


# static fields
.field public static final finished:Ljava/util/concurrent/locks/Condition;

.field public static final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lteam/rainfall/ctap/CTAP;->lock:Ljava/util/concurrent/locks/Lock;

    .line 16
    sget-object v0, Lteam/rainfall/ctap/CTAP;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lteam/rainfall/ctap/CTAP;->finished:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .registers 4
    .param p0, "data"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p1, "ch"  # C

    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v1, p1, 0x200

    aget-object v0, v0, v1

    .line 34
    .local v0, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v0, :cond_d

    and-int/lit16 v1, p1, 0x1ff

    aget-object v1, v0, v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public static getGlyphLayoutData(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .registers 5
    .param p0, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p1, "str"  # Ljava/lang/CharSequence;

    .line 37
    sget-object v0, Lteam/rainfall/ctap/CTAP;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 39
    :try_start_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 40
    .local v0, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;>;"
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Lteam/rainfall/ctap/CTAP$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lteam/rainfall/ctap/CTAP$$ExternalSyntheticLambda0;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 51
    sget-object v1, Lteam/rainfall/ctap/CTAP;->finished:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_1f} :catch_27
    .catchall {:try_start_5 .. :try_end_1f} :catchall_25

    .line 57
    sget-object v2, Lteam/rainfall/ctap/CTAP;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    return-object v1

    .line 57
    .end local v0  # "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;>;"
    :catchall_25
    move-exception v0

    goto :goto_37

    .line 53
    :catch_27
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    .line 55
    nop

    .line 57
    sget-object v1, Lteam/rainfall/ctap/CTAP;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 55
    const/4 v1, 0x0

    return-object v1

    .line 57
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :goto_37
    sget-object v1, Lteam/rainfall/ctap/CTAP;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    throw v0
.end method

.method public static hasGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;C)Z
    .registers 4
    .param p0, "data"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p1, "ch"  # C

    .line 26
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 27
    return v1

    .line 29
    :cond_6
    invoke-static {p0, p1}, Lteam/rainfall/ctap/CTAP;->getGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public static hasGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;C)Z
    .registers 3
    .param p0, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p1, "c"  # C

    .line 18
    if-nez p0, :cond_9

    .line 19
    const-string v0, "CTAP - hasGlyph got a null BitmapFont!!!"

    invoke-static {v0}, Lteam/rainfall/finality/FinalityLogger;->warn(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    return v0

    .line 23
    :cond_9
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-static {v0, p1}, Lteam/rainfall/ctap/CTAP;->hasGlyph(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;C)Z

    move-result v0

    return v0
.end method

.method private static isCJK(C)Z
    .registers 3
    .param p0, "c"  # C

    .line 61
    invoke-static {p0}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v0

    .line 62
    .local v0, "script":Ljava/lang/Character$UnicodeScript;
    sget-object v1, Ljava/lang/Character$UnicodeScript;->HAN:Ljava/lang/Character$UnicodeScript;

    if-eq v0, v1, :cond_17

    sget-object v1, Ljava/lang/Character$UnicodeScript;->HIRAGANA:Ljava/lang/Character$UnicodeScript;

    if-eq v0, v1, :cond_17

    sget-object v1, Ljava/lang/Character$UnicodeScript;->KATAKANA:Ljava/lang/Character$UnicodeScript;

    if-eq v0, v1, :cond_17

    sget-object v1, Ljava/lang/Character$UnicodeScript;->HANGUL:Ljava/lang/Character$UnicodeScript;

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method static synthetic lambda$getGlyphLayoutData$0(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5
    .param p0, "font"  # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p1, "str"  # Ljava/lang/CharSequence;
    .param p2, "ref"  # Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    sget-object v0, Lteam/rainfall/ctap/CTAP;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 43
    :try_start_5
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    .line 44
    .local v0, "glyphLayout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 46
    sget-object v1, Lteam/rainfall/ctap/CTAP;->finished:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1c

    .line 48
    .end local v0  # "glyphLayout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    sget-object v0, Lteam/rainfall/ctap/CTAP;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    nop

    .line 50
    return-void

    .line 48
    :catchall_1c
    move-exception v0

    sget-object v1, Lteam/rainfall/ctap/CTAP;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    throw v0
.end method

.method public static tokenize(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "s"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_5e

    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 72
    .local v3, "c":C
    invoke-static {v3}, Lteam/rainfall/ctap/CTAP;->isCJK(C)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2c

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    :cond_2c
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 78
    :cond_34
    const/16 v5, 0x20

    if-ne v3, v5, :cond_58

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5b

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5b

    .line 84
    :cond_58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .end local v3  # "c":C
    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 87
    .end local v2  # "i":I
    :cond_5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6b

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_6b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .end local v3  # "string":Ljava/lang/String;
    goto :goto_72

    .line 94
    :cond_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tokenize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Original "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 95
    return-object v0
.end method

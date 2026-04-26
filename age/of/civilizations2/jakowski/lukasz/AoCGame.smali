.class public Lage/of/civilizations2/jakowski/lukasz/AoCGame;
.super Ljava/lang/Object;
.source "AoCGame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;
    }
.end annotation


# static fields
.field public static BOTTOM:I = 0x0

.field public static CTRL_CLICKED:Z = false

.field private static final DEFAULT_SCROLL:I = 0xf

.field private static final DEFAULT_SCROLL_MAP:I = 0xc

.field public static final INIT_STEAM:Z = true

.field public static LEFT:I = 0x0

.field public static RIGHT:I = 0x0

.field public static final STEAM_BUILD:Z = true

.field public static TOP:I = 0x0

.field public static TYPE_NUMBER:I = 0x0

.field public static final TYPE_NUMBER_RESET_TIME:I = 0x271

.field public static TYPE_NUMER_TIME:J

.field public static blackWhiteShdr:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field public static drawFPS:Z

.field public static nextPlayerTurnShdr:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static steamGame:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

.field public static viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;


# instance fields
.field private MAP_MOVE_BOT:Z

.field private MAP_MOVE_LEFT:Z

.field private MAP_MOVE_RIGHT:Z

.field private MAP_MOVE_TOP:Z

.field private final VERTEX:Ljava/lang/String;

.field cam:Lcom/badlogic/gdx/graphics/PerspectiveCamera;

.field camController:Lcom/badlogic/gdx/graphics/g3d/utils/CameraInputController;

.field private fragmentShader:Ljava/lang/String;

.field private iNumOfFPS:I

.field private iScroll:I

.field private iScroll_MAP:F

.field private iScroll_MAPY:F

.field private lScrollTime:J

.field private lScrollTime_MAP:J

.field private lScrollTime_MAPY:J

.field private lTimeFPS:J

.field private oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

.field private oSBNames:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private requestRendering:Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;

.field private touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

.field private vertexShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 80
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TOP:I

    .line 81
    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->BOTTOM:I

    .line 82
    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    .line 83
    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->RIGHT:I

    .line 97
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->drawFPS:Z

    .line 924
    const-wide/16 v1, 0x0

    sput-wide v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMER_TIME:J

    .line 925
    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    .line 944
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->CTRL_CLICKED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Touch;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Touch;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    .line 89
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    .line 133
    const-string v1, "attribute vec4 a_position;attribute vec4 a_color;attribute vec2 a_texCoord0;uniform mat4 u_projTrans;varying vec4 vColor;varying vec2 vTexCoord;void main() {\tvColor = a_color;\tvTexCoord = a_texCoord0;\tgl_Position =  u_projTrans * a_position;}"

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->VERTEX:Ljava/lang/String;

    .line 861
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    .line 862
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    .line 863
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    .line 864
    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    .line 867
    const/high16 v0, 0x41400000  # 12.0f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    .line 868
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    .line 870
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    .line 871
    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    .line 1844
    const/16 v0, 0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    .line 1845
    iput-wide v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime:J

    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    .line 55
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    return v0
.end method

.method static synthetic access$002(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;
    .param p1, "x1"  # Z

    .line 55
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    return p1
.end method

.method static synthetic access$100(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    .line 55
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    return v0
.end method

.method static synthetic access$1000(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)I
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    .line 55
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    return v0
.end method

.method static synthetic access$102(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;
    .param p1, "x1"  # Z

    .line 55
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    return p1
.end method

.method static synthetic access$202(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J
    .registers 3
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;
    .param p1, "x1"  # J

    .line 55
    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    return-wide p1
.end method

.method static synthetic access$302(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;
    .param p1, "x1"  # F

    .line 55
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    return p1
.end method

.method static synthetic access$400(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    .line 55
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    return v0
.end method

.method static synthetic access$402(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;
    .param p1, "x1"  # Z

    .line 55
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    return p1
.end method

.method static synthetic access$500(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    .line 55
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    return v0
.end method

.method static synthetic access$502(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;
    .param p1, "x1"  # Z

    .line 55
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    return p1
.end method

.method static synthetic access$602(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J
    .registers 3
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;
    .param p1, "x1"  # J

    .line 55
    iput-wide p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    return-wide p1
.end method

.method static synthetic access$702(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;
    .param p1, "x1"  # F

    .line 55
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    return p1
.end method

.method static synthetic access$800(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Lage/of/civilizations2/jakowski/lukasz/Touch;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    .line 55
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->touch:Lage/of/civilizations2/jakowski/lukasz/Touch;

    return-object v0
.end method

.method static synthetic access$900(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V
    .registers 1
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    .line 55
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll()V

    return-void
.end method

.method private countFPS()V
    .registers 7

    .line 715
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lTimeFPS:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_20

    .line 718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lTimeFPS:J

    .line 719
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfFPS:I

    .line 720
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iNumOfFPS:I

    .line 722
    :cond_20
    return-void
.end method

.method public static disposeImages()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Image;",
            ">;"
        }
    .end annotation

    .line 745
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getImages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getIOSSafeAreaInsets()Lcom/badlogic/gdx/math/Vector2;
    .registers 5

    .line 155
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_27

    .line 157
    :try_start_a
    const-string v0, "age.of.civilizations2.jakowski.lukasz.IOSLauncher"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 158
    .local v0, "IOSLauncher":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getSafeAreaInsets"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_23

    return-object v1

    .line 159
    .end local v0  # "IOSLauncher":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_23
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_27
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    return-object v0
.end method

.method private getIOSSafeAreaInsets_LeftRight()Lcom/badlogic/gdx/math/Vector2;
    .registers 5

    .line 167
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_27

    .line 169
    :try_start_a
    const-string v0, "age.of.civilizations2.jakowski.lukasz.IOSLauncher"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 170
    .local v0, "IOSLauncher":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getSafeAreaInsets_LeftRight"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_23

    return-object v1

    .line 171
    .end local v0  # "IOSLauncher":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_23
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_27
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    return-object v0
.end method

.method public static final loadCursor(Z)V
    .registers 4
    .param p0, "inInit"  # Z

    .line 443
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->loadCursor:Z

    if-eqz v0, :cond_23

    .line 445
    :try_start_6
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    const-string v1, "UI/icons/cursor.png"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 446
    .local v0, "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2}, Lcom/badlogic/gdx/Graphics;->newCursor(Lcom/badlogic/gdx/graphics/Pixmap;II)Lcom/badlogic/gdx/graphics/Cursor;

    move-result-object v1

    .line 447
    .local v1, "cursor":Lcom/badlogic/gdx/graphics/Cursor;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Graphics;->setCursor(Lcom/badlogic/gdx/graphics/Cursor;)V

    .line 448
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V
    :try_end_20
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_20} :catch_21

    .end local v0  # "pixmap":Lcom/badlogic/gdx/graphics/Pixmap;
    .end local v1  # "cursor":Lcom/badlogic/gdx/graphics/Cursor;
    goto :goto_22

    .line 449
    :catch_21
    move-exception v0

    .line 451
    :goto_22
    goto :goto_2c

    .line 453
    :cond_23
    if-nez p0, :cond_2c

    .line 454
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    sget-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setSystemCursor(Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V

    .line 456
    :cond_2c
    :goto_2c
    return-void
.end method

.method public static final resetTypeNumber()V
    .registers 2

    .line 940
    const-wide/16 v0, 0x0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMER_TIME:J

    .line 941
    const/4 v0, 0x0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    .line 942
    return-void
.end method

.method public static final updateArmyFontSize()V
    .registers 2

    .line 459
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_ARMY_SIZEX:I

    if-gez v0, :cond_1a

    .line 460
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    const/16 v1, 0x16

    if-nez v0, :cond_16

    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    if-eqz v0, :cond_11

    goto :goto_16

    .line 464
    :cond_11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_ARMY_SIZEX:I

    goto :goto_1a

    .line 461
    :cond_16
    :goto_16
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iput v1, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_ARMY_SIZEX:I

    .line 467
    :cond_1a
    :goto_1a
    return-void
.end method

.method private final updateMoveMap()V
    .registers 4

    .line 875
    :try_start_0
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_LEFT:Z

    if-eqz v0, :cond_1f

    .line 876
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll_Map()V

    .line 877
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosX(I)V

    goto :goto_3d

    .line 879
    :cond_1f
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_RIGHT:Z

    if-eqz v0, :cond_3d

    .line 880
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll_Map()V

    .line 881
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPX()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosX(I)V

    .line 884
    :cond_3d
    :goto_3d
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_TOP:Z

    if-eqz v0, :cond_5c

    .line 885
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll_MapY()V

    .line 886
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosY(I)V

    goto :goto_7a

    .line 888
    :cond_5c
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->MAP_MOVE_BOT:Z

    if-eqz v0, :cond_7a

    .line 889
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateScroll_MapY()V

    .line 890
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->getPY()I

    move-result v1

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->setNewPosY(I)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_7b

    .line 896
    :cond_7a
    :goto_7a
    goto :goto_83

    .line 892
    :catch_7b
    move-exception v0

    .line 893
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v1, :cond_83

    .line 894
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 897
    .end local v0  # "ex":Ljava/lang/Exception;
    :cond_83
    :goto_83
    return-void
.end method

.method private final updateRequestRendering(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 106
    if-eqz p1, :cond_a

    .line 107
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->requestRendering:Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;

    goto :goto_11

    .line 114
    :cond_a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->requestRendering:Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;

    .line 121
    :goto_11
    return-void
.end method

.method private final updateScroll()V
    .registers 6

    .line 1867
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime:J

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_26

    .line 1868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime:J

    .line 1869
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    int-to-float v1, v0

    const v2, 0x3f99999a  # 1.2f

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    .line 1871
    const/16 v1, 0x4b

    if-le v0, v1, :cond_30

    .line 1872
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    goto :goto_30

    .line 1876
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime:J

    .line 1877
    const/16 v0, 0xf

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll:I

    .line 1879
    :cond_30
    :goto_30
    return-void
.end method

.method private final updateScroll_Map()V
    .registers 6

    .line 900
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_64

    .line 901
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAP:J

    .line 902
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    const v1, 0x3ef33333  # 0.475f

    mul-float v1, v1, v0

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    .line 904
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    sub-float v1, v2, v1

    add-float/2addr v1, v2

    goto :goto_3d

    :cond_3b
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_3d
    const/high16 v3, 0x420c0000  # 35.0f

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_64

    .line 905
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_60

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sub-float v0, v2, v0

    add-float/2addr v2, v0

    :cond_60
    mul-float v2, v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAP:F

    .line 908
    :cond_64
    return-void
.end method

.method private final updateScroll_MapY()V
    .registers 6

    .line 911
    iget-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_64

    .line 912
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->lScrollTime_MAPY:J

    .line 913
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    const v1, 0x3ef33333  # 0.475f

    mul-float v1, v1, v0

    add-float/2addr v0, v1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    .line 915
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3b

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    sub-float v1, v2, v1

    add-float/2addr v1, v2

    goto :goto_3d

    :cond_3b
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_3d
    const/high16 v3, 0x420c0000  # 35.0f

    mul-float v1, v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_64

    .line 916
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_60

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    sub-float v0, v2, v0

    add-float/2addr v2, v0

    :cond_60
    mul-float v2, v2, v3

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->iScroll_MAPY:F

    .line 919
    :cond_64
    return-void
.end method


# virtual methods
.method public Hi_HowAreYou()V
    .registers 10

    .line 62
    const/4 v0, 0x1

    .line 64
    .local v0, "state":I
    const-string v1, "Łukasz Jakowski"

    .line 66
    .local v1, "author":Ljava/lang/String;
    const-string v2, "Age of History 2: Definitive Edition"

    .line 67
    .local v2, "projectName":Ljava/lang/String;
    const-string v3, "stable"

    .line 68
    .local v3, "buildStatus":Ljava/lang/String;
    const-string v4, "2.01"

    .line 70
    .local v4, "version":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 71
    .local v5, "checksum":I
    xor-int v6, v5, v0

    .line 73
    .local v6, "validation":I
    if-eqz v6, :cond_31

    const-string v7, "stable"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 74
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "System ready."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :cond_31
    return-void
.end method

.method public create()V
    .registers 10

    .line 182
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->initLoadInterface()V

    .line 183
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->readConfig()V

    .line 185
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->landscape:Z

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    .line 187
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 188
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-eqz v0, :cond_25

    .line 189
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    .line 190
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    goto :goto_65

    .line 193
    :cond_25
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 194
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    .line 195
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    goto :goto_65

    .line 198
    :cond_44
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    .line 199
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    goto :goto_65

    .line 204
    :cond_55
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    .line 205
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    .line 209
    :goto_65
    :try_start_65
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->getIOSSafeAreaInsets()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 211
    .local v0, "a":Lcom/badlogic/gdx/math/Vector2;
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TOP:I

    .line 212
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->BOTTOM:I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_73} :catch_74

    .line 215
    .end local v0  # "a":Lcom/badlogic/gdx/math/Vector2;
    goto :goto_78

    .line 213
    :catch_74
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_78
    :try_start_78
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->getIOSSafeAreaInsets_LeftRight()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 219
    .local v0, "a":Lcom/badlogic/gdx/math/Vector2;
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    .line 220
    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->RIGHT:I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_86} :catch_87

    .line 223
    .end local v0  # "a":Lcom/badlogic/gdx/math/Vector2;
    goto :goto_8b

    .line 221
    :catch_87
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_8b
    new-instance v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 226
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 227
    new-instance v0, Lcom/badlogic/gdx/utils/viewport/FitViewport;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v2, v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v0, v1, v2, v4}, Lcom/badlogic/gdx/utils/viewport/FitViewport;-><init>(FFLcom/badlogic/gdx/graphics/Camera;)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 229
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Renderer;->init()V

    .line 241
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateRequestRendering(Z)V

    .line 244
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadSettings()V

    .line 248
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDensity()F

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    .line 249
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_ce

    sput v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->DENSITY:F

    .line 253
    :cond_ce
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I

    const/4 v4, 0x2

    if-gtz v1, :cond_124

    .line 254
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_112

    .line 255
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v1

    const/high16 v5, 0x43960000  # 300.0f

    cmpl-float v1, v1, v5

    if-gez v1, :cond_f2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    const/16 v5, 0x4b0

    if-ge v1, v5, :cond_f2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    if-lt v1, v5, :cond_f0

    goto :goto_f2

    :cond_f0
    const/4 v1, 0x0

    goto :goto_f3

    :cond_f2
    :goto_f2
    const/4 v1, 0x1

    :goto_f3
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    .line 256
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v1

    const/high16 v5, 0x43be0000  # 380.0f

    cmpl-float v1, v1, v5

    if-gez v1, :cond_10e

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    const/16 v5, 0x708

    if-ge v1, v5, :cond_10e

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    if-lt v1, v5, :cond_10c

    goto :goto_10e

    :cond_10c
    const/4 v1, 0x0

    goto :goto_10f

    :cond_10e
    :goto_10e
    const/4 v1, 0x1

    :goto_10f
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    goto :goto_15d

    .line 259
    :cond_112
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 260
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    const/16 v5, 0x960

    if-lt v1, v5, :cond_120

    const/4 v1, 0x1

    goto :goto_121

    :cond_120
    const/4 v1, 0x0

    :goto_121
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    goto :goto_15d

    .line 267
    :cond_124
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I

    if-ne v1, v0, :cond_12f

    .line 268
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    .line 269
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    .line 270
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    goto :goto_15d

    .line 271
    :cond_12f
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I

    if-ne v1, v4, :cond_13a

    .line 272
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    .line 273
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    .line 274
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    goto :goto_15d

    .line 276
    :cond_13a
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_146

    .line 277
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    .line 278
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    .line 279
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    goto :goto_15d

    .line 281
    :cond_146
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_152

    .line 282
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    .line 283
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    .line 284
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    goto :goto_15d

    .line 286
    :cond_152
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I

    const/4 v5, 0x5

    if-ne v1, v5, :cond_15d

    .line 287
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    .line 288
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    .line 289
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    .line 296
    :cond_15d
    :goto_15d
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 297
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSBNames:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 298
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->initInput()V

    .line 299
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input;->setCatchBackKey(Z)V

    .line 302
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 303
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Platform;->init()V

    .line 309
    :cond_17e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UI/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "buttons/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "menu.png"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnMenuH:I

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "clear.png"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnClear:I

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "close.png"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnClose:I

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "buttonGame.png"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->buttonGame:I

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "buttonGameH.png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->buttonGameH:I

    .line 316
    const-string v1, "UI/gradients/gradientVertical.png"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientVertical:I

    .line 317
    const-string v1, "UI/gradients/gradientHorizontal.png"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientHorizontal:I

    .line 318
    const-string v1, "UI/gradients/gradientHorizontal2.png"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientHorizontal2:I

    .line 319
    const-string v1, "UI/gradients/gradientHorizontal3.png"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientHorizontal3:I

    .line 320
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v7, "UI/gradients/gradientFull.png"

    invoke-static {v7, v1, v6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull:I

    .line 321
    const-string v1, "UI/gradients/gradientFull2.png"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientFull2:I

    .line 322
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v7, "UI/gradients/gradientXY.png"

    invoke-static {v7, v1, v6}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXY:I

    .line 323
    const-string v1, "UI/gradients/gradientXYVertical.png"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradientXYVertical:I

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "boxes/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "statsRectBG.png"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBG:I

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "statsRectBGBorder.png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->statsRectBGBorder:I

    .line 328
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v8, "UI/lines/line_32_off1.png"

    invoke-static {v8, v1, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "gradient.png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "loading/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "loading_edge.png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-static {v1, v6, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->loading_rect_edge:I

    .line 333
    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v8, "UI/pix"

    invoke-static {v8, v1, v6, v7}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    .line 335
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->btnMenuH:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    .line 336
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXXHDPI:Z

    if-eqz v1, :cond_34c

    const/16 v1, 0xb4

    goto :goto_35c

    :cond_34c
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XXHDPI:Z

    if-eqz v1, :cond_353

    const/16 v1, 0xa0

    goto :goto_35c

    :cond_353
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->XHDPI:Z

    if-eqz v1, :cond_35a

    const/16 v1, 0x78

    goto :goto_35c

    :cond_35a
    const/16 v1, 0x5a

    :goto_35c
    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    .line 338
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    const/high16 v6, 0x42c80000  # 100.0f

    mul-float v1, v1, v6

    const/high16 v7, 0x42880000  # 68.0f

    div-float/2addr v1, v7

    div-float/2addr v1, v6

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    .line 339
    const/high16 v1, 0x40a00000  # 5.0f

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v6, v6, v1

    float-to-int v1, v6

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    .line 340
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    int-to-float v1, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v1, v1, v6

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_INFO_MENU_WIDTH:I

    .line 341
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_W:I

    int-to-float v1, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v1, v1, v6

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CIV_COLOR_W:I

    .line 343
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    int-to-float v1, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v1, v1, v6

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_WIDTH:I

    .line 344
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    int-to-float v1, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v1, v1, v6

    float-to-int v1, v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SERVICE_RIBBON_HEIGHT:I

    .line 346
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_MAIN_SIZEX:I

    if-gez v1, :cond_3ad

    .line 347
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    const/high16 v6, 0x41900000  # 18.0f

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v7, v7, v6

    float-to-int v6, v7

    iput v6, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_MAIN_SIZEX:I

    .line 350
    :cond_3ad
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateArmyFontSize()V

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getResPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "game_logo.png"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->addIMG2(Ljava/lang/String;)I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    .line 354
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 355
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateRenderer()V

    .line 356
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Render;->updateDrawMoveUnits()V

    .line 358
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;-><init>()V

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    .line 360
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/InitGame;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/InitGame;-><init>()V

    .line 363
    sput-boolean v3, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    .line 365
    const-string v1, "game/shader/default_vertex.glsl"

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "defaultVertex":Ljava/lang/String;
    const-string v5, "game/shader/flag_fragment.glsl"

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "flagFragment":Ljava/lang/String;
    const-string v6, "game/shader/nextPlayerTurn_vertex.glsl"

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "nextPlayerTurnVertex":Ljava/lang/String;
    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v8, "attribute vec4 a_position;attribute vec4 a_color;attribute vec2 a_texCoord0;uniform mat4 u_projTrans;varying vec4 vColor;varying vec2 vTexCoord;void main() {\tvColor = a_color;\tvTexCoord = a_texCoord0;\tgl_Position =  u_projTrans * a_position;}"

    invoke-direct {v7, v8, v5}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 372
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 373
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v8, "u_texture1"

    invoke-virtual {v7, v8, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 374
    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v8, "u_mask"

    invoke-virtual {v7, v8, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 375
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha4:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->end()V

    .line 378
    const-string v4, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->vertexShader:Ljava/lang/String;

    .line 393
    const-string v4, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\nuniform sampler2D u_texture2;\nuniform float u_maskScale;\nuniform float u_useMask;\nuniform vec2 u_maskOffset;\nvoid main()                                  \n{                                            \n vec2 newCoords = -1.0 * (u_maskScale - 1.0)/2.0 + (u_maskScale * v_texCoords) + u_maskOffset;\n vec4 mask = vec4(1.0, 1.0, 1.0, 1.0); \nif(u_useMask > 0.5) \n\tmask = texture2D(u_texture2, v_texCoords);\n vec4 color = v_color * texture2D(u_texture, newCoords);\n  gl_FragColor = vec4(color.rgb, color.a * mask.r);\n}"

    iput-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->fragmentShader:Ljava/lang/String;

    .line 411
    new-instance v4, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->vertexShader:Ljava/lang/String;

    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->fragmentShader:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 413
    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->begin()V

    .line 414
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v7, "u_texture"

    invoke-virtual {v4, v7, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 415
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v4, "u_texture2"

    invoke-virtual {v3, v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 416
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v4, "u_useMask"

    invoke-virtual {v3, v4, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 417
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/high16 v3, 0x41a00000  # 20.0f

    const-string v4, "u_maskScale"

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    .line 418
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderAlpha3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v3, "u_maskOffset"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    .line 420
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameLogo:I

    sput v2, Lage/of/civilizations2/jakowski/lukasz/Images;->statsBox:I

    .line 423
    const-string v2, "game/shader/default_fragment.glsl"

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "defaultFragment":Ljava/lang/String;
    const-string v3, "game/shader/blackWhite_fragment.glsl"

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "blackWhiteFragment":Ljava/lang/String;
    const-string v4, "game/shader/nextPlayerTurn_fragment.glsl"

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "nextPlayerTurnFragment":Ljava/lang/String;
    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v7, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 430
    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v7, v1, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->blackWhiteShdr:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 431
    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-direct {v7, v6, v4}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->nextPlayerTurnShdr:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 433
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->loadCursor(Z)V

    .line 436
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Steam_Game;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->steamGame:Lage/of/civilizations2/jakowski/lukasz/Steam_Game;

    .line 439
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->initTopBox()V

    .line 440
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 750
    :try_start_0
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 751
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sU:Lcom/codedisaster/steamworks/SteamUGC;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUGC;->dispose()V

    .line 752
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUT:Lcom/codedisaster/steamworks/SteamUtils;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUtils;->dispose()V

    .line 753
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUI:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->dispose()V

    .line 755
    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->shutdown()V

    .line 758
    :cond_18
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    .line 759
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_10d

    .line 761
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_27
    :try_start_27
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 762
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3a} :catch_3e

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 766
    .end local v0  # "a":I
    :cond_3d
    goto :goto_42

    .line 764
    :catch_3e
    move-exception v0

    .line 765
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3f
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_10d

    .line 769
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_42
    :try_start_42
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_4b

    .line 770
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_4c

    .line 775
    :cond_4b
    goto :goto_50

    .line 773
    :catch_4c
    move-exception v0

    .line 774
    .restart local v0  # "ex":Ljava/lang/Exception;
    :try_start_4d
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_10d

    .line 778
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_50
    :try_start_50
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_59

    .line 779
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_59} :catch_5a

    .line 783
    :cond_59
    goto :goto_5e

    .line 781
    :catch_5a
    move-exception v0

    .line 782
    .restart local v0  # "ex":Ljava/lang/Exception;
    :try_start_5b
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_10d

    .line 786
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_5e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5f
    :try_start_5f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getImagesSize()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 787
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_70} :catch_74

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 791
    .end local v0  # "i":I
    :cond_73
    goto :goto_78

    .line 789
    :catch_74
    move-exception v0

    .line 790
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_75
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_10d

    .line 794
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_79
    :try_start_79
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->cloudsAnimation:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCL:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_93

    .line 795
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->cloudsAnimation:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->iCL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_90} :catch_94

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 799
    .end local v0  # "i":I
    :cond_93
    goto :goto_95

    .line 797
    :catch_94
    move-exception v0

    .line 802
    :goto_95
    :try_start_95
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpB()Lage/of/civilizations2/jakowski/lukasz/MapBG;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapBG;->disposeGameMap()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9e} :catch_9f

    .line 805
    goto :goto_a0

    .line 803
    :catch_9f
    move-exception v0

    .line 808
    :goto_a0
    :try_start_a0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagOfCivilizationH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c5

    .line 809
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagOfCivilizationH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0  # "i":I
    :goto_b0
    if-ltz v0, :cond_c0

    .line 810
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagOfCivilizationH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V

    .line 809
    add-int/lit8 v0, v0, -0x1

    goto :goto_b0

    .line 813
    .end local v0  # "i":I
    :cond_c0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->flagOfCivilizationH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c5} :catch_c6

    .line 817
    :cond_c5
    goto :goto_c7

    .line 815
    :catch_c6
    move-exception v0

    .line 820
    :goto_c7
    :try_start_c7
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Map;->mpOv:Lage/of/civilizations2/jakowski/lukasz/MapOv;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapOv;->dispose()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ce} :catch_cf

    .line 823
    goto :goto_d0

    .line 821
    :catch_cf
    move-exception v0

    .line 826
    :goto_d0
    :try_start_d0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->dispose()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d5} :catch_d6

    .line 829
    goto :goto_da

    .line 827
    :catch_d6
    move-exception v0

    .line 828
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_d7
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_10d

    .line 832
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_da
    :try_start_da
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;->background:Lage/of/civilizations2/jakowski/lukasz/Image;

    if-eqz v0, :cond_e3

    .line 833
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;->background:Lage/of/civilizations2/jakowski/lukasz/Image;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Image;->dispose()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e3} :catch_e4

    .line 837
    :cond_e3
    goto :goto_e8

    .line 835
    :catch_e4
    move-exception v0

    .line 836
    .restart local v0  # "ex":Ljava/lang/Exception;
    :try_start_e5
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_10d

    .line 840
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_e8
    :try_start_e8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->USE_NEW_TREAD_TURN_ACTION:Z

    if-eqz v0, :cond_f5

    .line 841
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameAction;->turnThreadNewTurn:Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadNewTurn;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadNewTurn;->interrupt()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f5} :catch_f6

    .line 845
    :cond_f5
    goto :goto_fa

    .line 843
    :catch_f6
    move-exception v0

    .line 844
    .restart local v0  # "ex":Ljava/lang/Exception;
    :try_start_f7
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_10d

    .line 848
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_fa
    :try_start_fa
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->USE_NEW_TREAD_TURN_ACTION:Z

    if-eqz v0, :cond_107

    .line 849
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/GameAction;->turnThreadActions:Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TurnThreads/Turn_ThreadActions;->interrupt()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_107} :catch_108

    .line 853
    :cond_107
    goto :goto_10c

    .line 851
    :catch_108
    move-exception v0

    .line 852
    .restart local v0  # "ex":Ljava/lang/Exception;
    :try_start_109
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_10d

    .line 856
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_10c
    goto :goto_111

    .line 854
    :catch_10d
    move-exception v0

    .line 855
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 857
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_111
    return-void
.end method

.method public getScrolled_ScaleUpdate()F
    .registers 3

    .line 1849
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3e

    .line 1850
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    const v1, 0x3f266666  # 0.65f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_25

    .line 1851
    const v0, 0x3d4ccccd  # 0.05f

    return v0

    .line 1853
    :cond_25
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v0

    const v1, 0x3ecccccd  # 0.4f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3a

    .line 1854
    const v0, 0x3ca3d70a  # 0.02f

    return v0

    .line 1857
    :cond_3a
    const v0, 0x3c23d70a  # 0.01f

    return v0

    .line 1861
    :cond_3e
    const v0, 0x3dcccccd  # 0.1f

    return v0
.end method

.method public initInput()V
    .registers 3

    .line 947
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    .line 1841
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1887
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateRequestRendering(Z)V

    .line 1888
    return-void
.end method

.method public render()V
    .registers 7

    .line 504
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->update()V

    .line 505
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateMoveMap()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 508
    goto :goto_b

    .line 506
    :catch_7
    move-exception v0

    .line 507
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 510
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    if-eqz v0, :cond_291

    .line 512
    :try_start_f
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/ProvinceBorder;->drawProvBorder_Prepare()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 515
    goto :goto_17

    .line 513
    :catch_13
    move-exception v0

    .line 514
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 518
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_17
    :try_start_17
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BG_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    .line 519
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 522
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 523
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 524
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 525
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 526
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_92
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_92} :catch_286
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_92} :catch_27a

    .line 529
    :try_start_92
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_97} :catch_98
    .catch Ljava/lang/IllegalStateException; {:try_start_92 .. :try_end_97} :catch_286

    .line 532
    goto :goto_99

    .line 530
    :catch_98
    move-exception v0

    .line 534
    :goto_99
    :try_start_99
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9e} :catch_9f
    .catch Ljava/lang/IllegalStateException; {:try_start_99 .. :try_end_9e} :catch_286

    .line 537
    goto :goto_a0

    .line 535
    :catch_9f
    move-exception v0

    .line 539
    :goto_a0
    :try_start_a0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V
    :try_end_a5
    .catch Ljava/lang/IllegalStateException; {:try_start_a0 .. :try_end_a5} :catch_286
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a5} :catch_27a

    .line 541
    :try_start_a5
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_aa} :catch_ab
    .catch Ljava/lang/IllegalStateException; {:try_start_a5 .. :try_end_aa} :catch_286

    .line 544
    goto :goto_ac

    .line 542
    :catch_ab
    move-exception v0

    .line 545
    :goto_ac
    :try_start_ac
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 549
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Render;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 552
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_c1
    .catch Ljava/lang/IllegalStateException; {:try_start_ac .. :try_end_c1} :catch_286
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_c1} :catch_27a

    .line 554
    :try_start_c1
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c6} :catch_c7
    .catch Ljava/lang/IllegalStateException; {:try_start_c1 .. :try_end_c6} :catch_286

    .line 557
    goto :goto_c8

    .line 555
    :catch_c7
    move-exception v0

    .line 560
    :goto_c8
    :try_start_c8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 561
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 562
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 563
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 564
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSBNames:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 565
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_104
    .catch Ljava/lang/IllegalStateException; {:try_start_c8 .. :try_end_104} :catch_286
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_104} :catch_27a

    .line 568
    :try_start_104
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_109} :catch_10a
    .catch Ljava/lang/IllegalStateException; {:try_start_104 .. :try_end_109} :catch_286

    .line 571
    goto :goto_10b

    .line 569
    :catch_10a
    move-exception v0

    .line 573
    :goto_10b
    :try_start_10b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_110} :catch_111
    .catch Ljava/lang/IllegalStateException; {:try_start_10b .. :try_end_110} :catch_286

    .line 576
    goto :goto_112

    .line 574
    :catch_111
    move-exception v0

    .line 578
    :goto_112
    :try_start_112
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V
    :try_end_117
    .catch Ljava/lang/IllegalStateException; {:try_start_112 .. :try_end_117} :catch_286
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_117} :catch_27a

    .line 580
    :try_start_117
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSBNames:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11c} :catch_11d
    .catch Ljava/lang/IllegalStateException; {:try_start_117 .. :try_end_11c} :catch_286

    .line 583
    goto :goto_121

    .line 581
    :catch_11d
    move-exception v0

    .line 582
    .restart local v0  # "ex":Ljava/lang/Exception;
    :try_start_11e
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_121
    .catch Ljava/lang/IllegalStateException; {:try_start_11e .. :try_end_121} :catch_286
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_121} :catch_27a

    .line 585
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_121
    :try_start_121
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_126} :catch_127
    .catch Ljava/lang/IllegalStateException; {:try_start_121 .. :try_end_126} :catch_286

    .line 588
    goto :goto_128

    .line 586
    :catch_127
    move-exception v0

    .line 592
    :goto_128
    :try_start_128
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSBNames:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Render;->drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 595
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_136
    .catch Ljava/lang/IllegalStateException; {:try_start_128 .. :try_end_136} :catch_286
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_136} :catch_27a

    .line 597
    :try_start_136
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSBNames:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13b} :catch_13c
    .catch Ljava/lang/IllegalStateException; {:try_start_136 .. :try_end_13b} :catch_286

    .line 600
    goto :goto_140

    .line 598
    :catch_13c
    move-exception v0

    .line 599
    .restart local v0  # "ex":Ljava/lang/Exception;
    :try_start_13d
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_140
    .catch Ljava/lang/IllegalStateException; {:try_start_13d .. :try_end_140} :catch_286
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_27a

    .line 602
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_140
    :try_start_140
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_145} :catch_146
    .catch Ljava/lang/IllegalStateException; {:try_start_140 .. :try_end_145} :catch_286

    .line 605
    goto :goto_147

    .line 603
    :catch_146
    move-exception v0

    .line 608
    :goto_147
    :try_start_147
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v2, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    div-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 609
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 610
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v5

    div-float/2addr v2, v5

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 611
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 612
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_1a5
    .catch Ljava/lang/IllegalStateException; {:try_start_147 .. :try_end_1a5} :catch_286
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_1a5} :catch_27a

    .line 615
    :try_start_1a5
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1aa} :catch_1ab
    .catch Ljava/lang/IllegalStateException; {:try_start_1a5 .. :try_end_1aa} :catch_286

    .line 618
    goto :goto_1ac

    .line 616
    :catch_1ab
    move-exception v0

    .line 620
    :goto_1ac
    :try_start_1ac
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1b1} :catch_1b2
    .catch Ljava/lang/IllegalStateException; {:try_start_1ac .. :try_end_1b1} :catch_286

    .line 623
    goto :goto_1b3

    .line 621
    :catch_1b2
    move-exception v0

    .line 625
    :goto_1b3
    :try_start_1b3
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V
    :try_end_1b8
    .catch Ljava/lang/IllegalStateException; {:try_start_1b3 .. :try_end_1b8} :catch_286
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1b8} :catch_27a

    .line 627
    :try_start_1b8
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1bd} :catch_1be
    .catch Ljava/lang/IllegalStateException; {:try_start_1b8 .. :try_end_1bd} :catch_286

    .line 630
    goto :goto_1bf

    .line 628
    :catch_1be
    move-exception v0

    .line 631
    :goto_1bf
    :try_start_1bf
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->shaderDef:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 635
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Render;->drawMapDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 637
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->cloudsAnimation:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager;->cloudsInterface:Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsInterface;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Clouds/CloudsManager$CloudsInterface;->drawCloudsInterface(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 640
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_1df
    .catch Ljava/lang/IllegalStateException; {:try_start_1bf .. :try_end_1df} :catch_286
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1df} :catch_27a

    .line 642
    :try_start_1df
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e4} :catch_1e5
    .catch Ljava/lang/IllegalStateException; {:try_start_1df .. :try_end_1e4} :catch_286

    .line 645
    goto :goto_1e6

    .line 643
    :catch_1e5
    move-exception v0

    .line 648
    :goto_1e6
    :try_start_1e6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    .line 649
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    int-to-float v1, v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    .line 650
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    .line 651
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 652
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->oSBBorder2:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->cameraOrt:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_218
    .catch Ljava/lang/IllegalStateException; {:try_start_1e6 .. :try_end_218} :catch_286
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_218} :catch_27a

    .line 655
    :try_start_218
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_21d} :catch_21e
    .catch Ljava/lang/IllegalStateException; {:try_start_218 .. :try_end_21d} :catch_286

    .line 658
    goto :goto_21f

    .line 656
    :catch_21e
    move-exception v0

    .line 660
    :goto_21f
    :try_start_21f
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->begin()V

    .line 662
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 666
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->drawMM(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 668
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 672
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->drawFPS:Z
    :try_end_241
    .catch Ljava/lang/IllegalStateException; {:try_start_21f .. :try_end_241} :catch_286
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_241} :catch_27a

    if-eqz v0, :cond_26b

    .line 674
    :try_start_243
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfFPS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, v1, v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefaultWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_269} :catch_26a
    .catch Ljava/lang/IllegalStateException; {:try_start_243 .. :try_end_269} :catch_286

    .line 677
    goto :goto_26b

    .line 675
    :catch_26a
    move-exception v0

    .line 682
    :cond_26b
    :goto_26b
    :try_start_26b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->oSBR:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 683
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_279
    .catch Ljava/lang/IllegalStateException; {:try_start_26b .. :try_end_279} :catch_286
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_279} :catch_27a

    goto :goto_291

    .line 692
    :catch_27a
    move-exception v0

    .line 693
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 696
    :try_start_27e
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_27e .. :try_end_283} :catch_284

    .line 699
    goto :goto_291

    .line 697
    :catch_284
    move-exception v1

    goto :goto_291

    .line 684
    .end local v0  # "ex":Ljava/lang/Exception;
    :catch_286
    move-exception v0

    .line 685
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 688
    :try_start_28a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->oSB:Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/RendererSpriteBatch;->end()V
    :try_end_28f
    .catch Ljava/lang/IllegalStateException; {:try_start_28a .. :try_end_28f} :catch_290

    .line 691
    goto :goto_291

    .line 689
    :catch_290
    move-exception v1

    .line 703
    .end local v0  # "ex":Ljava/lang/IllegalStateException;
    :cond_291
    :goto_291
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    .line 709
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->requestRendering:Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame$RequestRendering;->update()V

    .line 710
    return-void
.end method

.method public resize(II)V
    .registers 7
    .param p1, "width"  # I
    .param p2, "height"  # I

    .line 727
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 728
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->LANDSCAPE:Z

    if-eqz v0, :cond_11

    .line 729
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    goto :goto_1e

    .line 731
    :cond_11
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    neg-int v2, p2

    neg-int v3, p1

    invoke-virtual {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    goto :goto_1e

    .line 734
    :cond_19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    .line 742
    :goto_1e
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1882
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->updateRequestRendering(Z)V

    .line 1883
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 1884
    return-void
.end method

.method public final typeNumber(I)V
    .registers 7
    .param p1, "iNum"  # I

    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x271

    sub-long/2addr v0, v2

    sget-wide v2, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMER_TIME:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 929
    sput p1, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    goto :goto_19

    .line 932
    :cond_10
    sget v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    .line 933
    add-int/2addr v0, p1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    .line 936
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMER_TIME:J

    .line 937
    return-void
.end method

.method public update()V
    .registers 3

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->currentTimeMillis:J

    .line 473
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderTime2:F

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Renderer;->shaderTime2:F

    .line 475
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->countFPS()V

    .line 478
    :try_start_14
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    if-nez v0, :cond_19

    .line 479
    return-void

    .line 482
    :cond_19
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->update()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    .line 485
    goto :goto_23

    .line 483
    :catch_1f
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 488
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_23
    :try_start_23
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->update()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_29

    .line 491
    goto :goto_2d

    .line 489
    :catch_29
    move-exception v0

    .line 490
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 494
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_2d
    :try_start_2d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->update()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    .line 497
    goto :goto_37

    .line 495
    :catch_33
    move-exception v0

    .line 496
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 498
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_37
    return-void
.end method

.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
.super Ljava/lang/Object;
.source "Skin.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;
    }
.end annotation


# static fields
.field private static final defaultTagClasses:[Ljava/lang/Class;


# instance fields
.field atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field private final jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field resources:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field scale:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 612
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/badlogic/gdx/graphics/Color;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageButton$ImageButtonStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ImageTextButton$ImageTextButtonStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Slider$SliderStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SplitPane$SplitPaneStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Touchpad$TouchpadStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 61
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 66
    .local v3, "c":Ljava/lang/Class;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v3  # "c":Ljava/lang/Class;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 71
    :cond_2c
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 8
    .param p1, "skinFile"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 61
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 66
    .local v3, "c":Ljava/lang/Class;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v3  # "c":Ljava/lang/Class;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 77
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".atlas"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 78
    .local v0, "atlasFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 79
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 80
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 83
    :cond_59
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .registers 9
    .param p1, "skinFile"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "atlas"  # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 61
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 66
    .local v3, "c":Ljava/lang/Class;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v3  # "c":Ljava/lang/Class;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 89
    :cond_2c
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 90
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .registers 8
    .param p1, "atlas"  # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 61
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    .line 63
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->defaultTagClasses:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 66
    .local v3, "c":Ljava/lang/Class;
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .end local v3  # "c":Ljava/lang/Class;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 97
    :cond_2c
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 98
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    .line 99
    return-void
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Method;
    .registers 7
    .param p0, "type"  # Ljava/lang/Class;
    .param p1, "name"  # Ljava/lang/String;

    .line 621
    invoke-static {p0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->getMethods(Ljava/lang/Class;)[Lcom/badlogic/gdx/utils/reflect/Method;

    move-result-object v0

    .line 622
    .local v0, "methods":[Lcom/badlogic/gdx/utils/reflect/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_6
    if-ge v1, v2, :cond_18

    .line 623
    aget-object v3, v0, v1

    .line 624
    .local v3, "method":Lcom/badlogic/gdx/utils/reflect/Method;
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    .line 622
    .end local v3  # "method":Lcom/badlogic/gdx/utils/reflect/Method;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 626
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "resource"  # Ljava/lang/Object;

    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 125
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 7
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "resource"  # Ljava/lang/Object;
    .param p3, "type"  # Ljava/lang/Class;

    .line 128
    if-eqz p1, :cond_37

    .line 129
    if-eqz p2, :cond_2f

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 131
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2b

    .line 132
    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eq p3, v2, :cond_20

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eq p3, v2, :cond_20

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    if-ne p3, v2, :cond_1d

    goto :goto_20

    :cond_1d
    const/16 v2, 0x40

    goto :goto_22

    :cond_20
    :goto_20
    const/16 v2, 0x100

    :goto_22
    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    move-object v0, v1

    .line 133
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p3, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_2b
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void

    .line 129
    .end local v0  # "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resource cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRegions(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .registers 9
    .param p1, "atlas"  # Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    .line 112
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getRegions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 113
    .local v0, "regions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_7
    if-ge v1, v2, :cond_37

    .line 114
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 115
    .local v3, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-object v4, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    .line 116
    .local v4, "name":Ljava/lang/String;
    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2f

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    :cond_2f
    const-class v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 113
    .end local v3  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    .end local v4  # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 121
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_37
    return-void
.end method

.method public dispose()V
    .registers 6

    .line 452
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->dispose()V

    .line 453
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 454
    .local v1, "entry":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 455
    .local v3, "resource":Ljava/lang/Object;
    instance-of v4, v3, Lcom/badlogic/gdx/utils/Disposable;

    if-eqz v4, :cond_27

    move-object v4, v3

    check-cast v4, Lcom/badlogic/gdx/utils/Disposable;

    invoke-interface {v4}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_27

    .line 456
    .end local v1  # "entry":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3  # "resource":Ljava/lang/Object;
    :cond_3c
    goto :goto_13

    .line 457
    :cond_3d
    return-void
.end method

.method public find(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "resource"  # Ljava/lang/Object;

    .line 337
    if-eqz p1, :cond_1a

    .line 338
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 339
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_12

    const/4 v1, 0x0

    return-object v1

    .line 340
    :cond_12
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->findKey(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 337
    .end local v0  # "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 147
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "default"

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p1, "name"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 153
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_8b

    .line 154
    if-eqz p2, :cond_83

    .line 156
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne p2, v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0

    .line 157
    :cond_d
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-ne p2, v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0

    .line 158
    :cond_16
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    if-ne p2, v0, :cond_1f

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v0

    return-object v0

    .line 159
    :cond_1f
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    if-ne p2, v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v0

    return-object v0

    .line 161
    :cond_28
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 162
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, " registered with name: "

    const-string v2, "No "

    if-eqz v0, :cond_60

    .line 163
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 164
    .local v3, "resource":Ljava/lang/Object;
    if-eqz v3, :cond_3d

    .line 165
    return-object v3

    .line 164
    :cond_3d
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 162
    .end local v3  # "resource":Ljava/lang/Object;
    :cond_60
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    .end local v0  # "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAll(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 186
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method public getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .registers 2

    .line 447
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->atlas:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object v0
.end method

.method public getColor(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 190
    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 8
    .param p1, "name"  # Ljava/lang/String;

    .line 293
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 294
    .local v0, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    if-eqz v0, :cond_b

    return-object v0

    .line 298
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 299
    .local v1, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    instance-of v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v2, :cond_43

    .line 300
    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 301
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    const-string v3, "split"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->findValue(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_29

    .line 302
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    move-object v0, v3

    goto :goto_43

    .line 303
    :cond_29
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-nez v3, :cond_39

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v3, v4, :cond_39

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-eq v3, v4, :cond_43

    .line 304
    :cond_39
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    move-object v0, v3

    .line 306
    .end local v2  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_43
    :goto_43
    if-nez v0, :cond_56

    .line 307
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v0, v2

    .line 308
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_56

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    :try_end_56
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_b .. :try_end_56} :catch_57

    .line 311
    .end local v1  # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :cond_56
    goto :goto_58

    .line 310
    :catch_57
    move-exception v1

    .line 314
    :goto_58
    if-nez v0, :cond_95

    .line 315
    const-class v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 316
    .local v1, "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-eqz v1, :cond_6b

    .line 317
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    move-object v0, v2

    goto :goto_95

    .line 319
    :cond_6b
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 320
    .local v2, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    if-eqz v2, :cond_7c

    .line 321
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    move-object v0, v3

    goto :goto_95

    .line 323
    :cond_7c
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Drawable, NinePatch, TextureRegion, Texture, or Sprite registered with name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    .end local v1  # "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .end local v2  # "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    :cond_95
    :goto_95
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v1, :cond_9f

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    .line 330
    :cond_9f
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 331
    return-object v0
.end method

.method public getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 194
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    return-object v0
.end method

.method public getJsonClassTags()Lcom/badlogic/gdx/utils/ObjectMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method protected getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;
    .registers 8
    .param p1, "skinFile"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 460
    move-object v0, p0

    .line 462
    .local v0, "skin":Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 498
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setTypeName(Ljava/lang/String;)V

    .line 499
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setUsePrototypes(Z)V

    .line 501
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;

    invoke-direct {v2, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 532
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 572
    const-class v2, Lcom/badlogic/gdx/graphics/Color;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$4;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 585
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$TintedDrawable;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin$5;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setSerializer(Ljava/lang/Class;Lcom/badlogic/gdx/utils/Json$Serializer;)V

    .line 599
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->jsonClassTags:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 600
    .local v3, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Class;>;"
    iget-object v4, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/utils/Json;->addClassTag(Ljava/lang/String;Ljava/lang/Class;)V

    .end local v3  # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/Class;>;"
    goto :goto_3c

    .line 602
    :cond_54
    return-object v1
.end method

.method public getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .registers 16
    .param p1, "name"  # Ljava/lang/String;

    .line 245
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .line 246
    .local v0, "patch":Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    if-eqz v0, :cond_b

    return-object v0

    .line 249
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 250
    .local v1, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    instance-of v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v2, :cond_4d

    .line 251
    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    const-string v3, "split"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->findValue(Ljava/lang/String;)[I

    move-result-object v2

    move-object v8, v2

    .line 252
    .local v8, "splits":[I
    if-eqz v8, :cond_4d

    .line 253
    new-instance v9, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    const/4 v10, 0x0

    aget v4, v8, v10

    const/4 v11, 0x1

    aget v5, v8, v11

    const/4 v12, 0x2

    aget v6, v8, v12

    const/4 v13, 0x3

    aget v7, v8, v13

    move-object v2, v9

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    move-object v0, v9

    .line 254
    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    const-string v3, "pad"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->findValue(Ljava/lang/String;)[I

    move-result-object v2

    .line 255
    .local v2, "pads":[I
    if-eqz v2, :cond_4d

    aget v3, v2, v10

    int-to-float v3, v3

    aget v4, v2, v11

    int-to-float v4, v4

    aget v5, v2, v12

    int-to-float v5, v5

    aget v6, v2, v13

    int-to-float v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setPadding(FFFF)V

    .line 258
    .end local v2  # "pads":[I
    .end local v8  # "splits":[I
    :cond_4d
    if-nez v0, :cond_55

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v0, v2

    .line 259
    :cond_55
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_64

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->scale(FF)V

    .line 260
    :cond_64
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    invoke-virtual {p0, p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_69
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_b .. :try_end_69} :catch_6a

    .line 261
    return-object v0

    .line 262
    .end local v1  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :catch_6a
    move-exception v1

    .line 263
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No NinePatch, TextureRegion, or Texture registered with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .registers 7
    .param p1, "name"  # Ljava/lang/String;

    .line 200
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 201
    .local v0, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-eqz v0, :cond_b

    return-object v0

    .line 203
    :cond_b
    const-class v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    .line 204
    .local v1, "texture":Lcom/badlogic/gdx/graphics/Texture;
    if-eqz v1, :cond_21

    .line 205
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v0, v2

    .line 206
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 207
    return-object v0

    .line 204
    :cond_21
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No TextureRegion or Texture registered with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;
    .registers 8
    .param p1, "regionName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "regions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    const/4 v1, 0x0

    .line 214
    .local v1, "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    .end local v1  # "i":I
    .local v4, "i":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 215
    .local v1, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-eqz v1, :cond_52

    .line 216
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v2

    .line 217
    :goto_2b
    if-eqz v1, :cond_52

    .line 218
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v4, 0x1

    .end local v4  # "i":I
    .local v5, "i":I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move v4, v5

    goto :goto_2b

    .line 222
    .end local v5  # "i":I
    .restart local v4  # "i":I
    :cond_52
    return-object v0
.end method

.method public getSprite(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    .registers 7
    .param p1, "name"  # Ljava/lang/String;

    .line 271
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 272
    .local v0, "sprite":Lcom/badlogic/gdx/graphics/g2d/Sprite;
    if-eqz v0, :cond_b

    return-object v0

    .line 275
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    .line 276
    .local v1, "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    instance-of v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v2, :cond_2c

    .line 277
    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    .line 278
    .local v2, "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    iget-boolean v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->rotate:Z

    if-nez v3, :cond_26

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedWidth:I

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalWidth:I

    if-ne v3, v4, :cond_26

    iget v3, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->packedHeight:I

    iget v4, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->originalHeight:I

    if-eq v3, v4, :cond_2c

    .line 279
    :cond_26
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;)V

    move-object v0, v3

    .line 281
    .end local v2  # "region":Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;
    :cond_2c
    if-nez v0, :cond_34

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v0, v2

    .line 282
    :cond_34
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4d

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 283
    :cond_4d
    const-class v2, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    invoke-virtual {p0, p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_52
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_b .. :try_end_52} :catch_53

    .line 284
    return-object v0

    .line 285
    .end local v1  # "textureRegion":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    :catch_53
    move-exception v1

    .line 286
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No NinePatch, TextureRegion, or Texture registered with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTiledDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;

    .line 228
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    .line 229
    .local v0, "tiled":Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    if-eqz v0, :cond_b

    return-object v0

    .line 231
    :cond_b
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    move-object v0, v1

    .line 232
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setName(Ljava/lang/String;)V

    .line 233
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_28

    .line 234
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 235
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setScale(F)V

    .line 237
    :cond_28
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->add(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 238
    return-object v0
.end method

.method public has(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "type"  # Ljava/lang/Class;

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 180
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    .line 181
    :cond_c
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public load(Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 6
    .param p1, "skinFile"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 104
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getJsonLoader(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Json;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;
    :try_end_9
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_9} :catch_b

    .line 107
    nop

    .line 108
    return-void

    .line 105
    :catch_b
    move-exception v0

    .line 106
    .local v0, "ex":Lcom/badlogic/gdx/utils/SerializationException;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 5
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 360
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    return-object v0

    .line 361
    :cond_d
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    return-object v0

    .line 362
    :cond_1a
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v0, :cond_27

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;)V

    return-object v0

    .line 363
    :cond_27
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    if-eqz v0, :cond_34

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;)V

    return-object v0

    .line 364
    :cond_34
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to copy, unknown drawable type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 7
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "r"  # F
    .param p3, "g"  # F
    .param p4, "b"  # F
    .param p5, "a"  # F

    .line 369
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 9
    .param p1, "drawable"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .param p2, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 375
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    if-eqz v0, :cond_c

    .line 376
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    .local v0, "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_23

    .line 377
    .end local v0  # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_c
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    if-eqz v0, :cond_18

    .line 378
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable;

    move-result-object v0

    .restart local v0  # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    goto :goto_23

    .line 379
    .end local v0  # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_18
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    if-eqz v0, :cond_6f

    .line 380
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable;

    move-result-object v0

    .line 384
    .restart local v0  # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_23
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    if-eqz v1, :cond_6e

    .line 385
    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    .line 386
    .local v1, "named":Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
    instance-of v2, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    const-string v3, ")"

    const-string v4, " ("

    if-eqz v2, :cond_56

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, p1

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    goto :goto_6e

    .line 389
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setName(Ljava/lang/String;)V

    .line 392
    .end local v1  # "named":Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
    :cond_6e
    :goto_6e
    return-object v0

    .line 382
    .end local v0  # "newDrawable":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :cond_6f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to copy, unknown drawable type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 345
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Ljava/lang/String;FFFF)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 8
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "r"  # F
    .param p3, "g"  # F
    .param p4, "b"  # F
    .param p5, "a"  # F

    .line 350
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "tint"  # Lcom/badlogic/gdx/graphics/Color;

    .line 355
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->newDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public optional(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 171
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_1d

    .line 172
    if-eqz p2, :cond_15

    .line 173
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 174
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_10

    const/4 v1, 0x0

    return-object v1

    .line 175
    :cond_10
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 172
    .end local v0  # "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "type"  # Ljava/lang/Class;

    .line 139
    if-eqz p1, :cond_e

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->resources:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 141
    .local v0, "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void

    .line 139
    .end local v0  # "typeResources":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scale(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 4
    .param p1, "drawble"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 399
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setLeftWidth(F)V

    .line 400
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setRightWidth(F)V

    .line 401
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setBottomHeight(F)V

    .line 402
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setTopHeight(F)V

    .line 403
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinWidth(F)V

    .line 404
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    mul-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->setMinHeight(F)V

    .line 405
    return-void
.end method

.method public setEnabled(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .registers 10
    .param p1, "actor"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "enabled"  # Z

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStyle"

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Method;

    move-result-object v0

    .line 424
    .local v0, "method":Lcom/badlogic/gdx/utils/reflect/Method;
    if-nez v0, :cond_d

    return-void

    .line 427
    :cond_d
    const/4 v1, 0x0

    :try_start_e
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_57

    .line 430
    .local v1, "style":Ljava/lang/Object;
    nop

    .line 432
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->find(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_1c

    return-void

    .line 434
    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-disabled"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_30

    move-object v4, v5

    :cond_30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setStyle"

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Lcom/badlogic/gdx/utils/reflect/Method;

    move-result-object v0

    .line 438
    if-nez v0, :cond_4d

    return-void

    .line 440
    :cond_4d
    :try_start_4d
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/badlogic/gdx/utils/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_55

    .line 442
    goto :goto_56

    .line 441
    :catch_55
    move-exception v3

    .line 443
    :goto_56
    return-void

    .line 428
    .end local v1  # "style":Ljava/lang/Object;
    .end local v2  # "name":Ljava/lang/String;
    :catch_57
    move-exception v1

    .line 429
    .local v1, "ignored":Ljava/lang/Exception;
    return-void
.end method

.method public setScale(F)V
    .registers 2
    .param p1, "scale"  # F

    .line 414
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->scale:F

    .line 415
    return-void
.end method

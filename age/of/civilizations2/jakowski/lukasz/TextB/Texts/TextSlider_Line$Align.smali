.class public final enum Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;
.super Ljava/lang/Enum;
.source "TextSlider_Line.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Align"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

.field public static final enum CENTER:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

.field public static final enum LEFT:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

.field public static final enum RIGHT:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;


# direct methods
.method private static synthetic $values()[Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;
    .registers 3

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->LEFT:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->CENTER:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->RIGHT:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->LEFT:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    .line 28
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->CENTER:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    .line 29
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->RIGHT:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    .line 26
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->$values()[Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 26
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    return-object v0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;
    .registers 1

    .line 26
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextSlider_Line$Align;

    return-object v0
.end method

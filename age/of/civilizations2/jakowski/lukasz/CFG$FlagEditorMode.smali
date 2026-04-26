.class public final enum Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;
.super Ljava/lang/Enum;
.source "CFG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/CFG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlagEditorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

.field public static final enum PAINT_BUCKET:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

.field public static final enum PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;


# direct methods
.method private static synthetic $values()[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;
    .registers 3

    .line 6705
    const/4 v0, 0x2

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PAINT_BUCKET:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 6706
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    const-string v1, "PENCIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PENCIL:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    .line 6707
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    const-string v1, "PAINT_BUCKET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->PAINT_BUCKET:Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    .line 6705
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->$values()[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6705
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 6705
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    return-object v0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;
    .registers 1

    .line 6705
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/CFG$FlagEditorMode;

    return-object v0
.end method

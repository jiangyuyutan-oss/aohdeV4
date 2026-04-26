.class public final enum Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;
.super Ljava/lang/Enum;
.source "Editors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum eGROWTH_RATE:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum eLEVEL_OF_PORT:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum eNEIGHBORING_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum ePROVINCE_CONTINENTS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum ePROVINCE_MAP_REGIONS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum ePROVINCE_NAME:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum ePROVINCE_REGIONS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum ePROVINCE_TEXTURE:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum eSHIFT_ARMY:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum eSHIFT_PORT:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

.field public static final enum eTERRAINS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;


# direct methods
.method private static synthetic $values()[Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;
    .registers 3

    .line 9
    const/16 v0, 0xb

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eTERRAINS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eSHIFT_ARMY:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eSHIFT_PORT:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eLEVEL_OF_PORT:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_TEXTURE:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_CONTINENTS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_REGIONS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_MAP_REGIONS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eNEIGHBORING_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eGROWTH_RATE:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_NAME:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 10
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "eTERRAINS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eTERRAINS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 11
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "eSHIFT_ARMY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eSHIFT_ARMY:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 12
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "eSHIFT_PORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eSHIFT_PORT:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 13
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "eLEVEL_OF_PORT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eLEVEL_OF_PORT:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 14
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "ePROVINCE_TEXTURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_TEXTURE:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 15
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "ePROVINCE_CONTINENTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_CONTINENTS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 16
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "ePROVINCE_REGIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_REGIONS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 17
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "ePROVINCE_MAP_REGIONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_MAP_REGIONS:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 18
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "eNEIGHBORING_PROVINCES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eNEIGHBORING_PROVINCES:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 19
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "eGROWTH_RATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->eGROWTH_RATE:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 20
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    const-string v1, "ePROVINCE_NAME"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->ePROVINCE_NAME:Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    .line 9
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->$values()[Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 9
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    return-object v0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;
    .registers 1

    .line 9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/Editor/Editors;

    return-object v0
.end method

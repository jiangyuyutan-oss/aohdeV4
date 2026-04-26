.class public final enum Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;
.super Ljava/lang/Enum;
.source "GameAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/GameAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TurnStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

.field public static final enum END_OF_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

.field public static final enum INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

.field public static final enum LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

.field public static final enum LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

.field public static final enum RESULTS_STANDINGS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

.field public static final enum SAVE_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

.field public static final enum START_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

.field public static final enum TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;


# direct methods
.method private static synthetic $values()[Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;
    .registers 3

    .line 4308
    const/16 v0, 0x8

    new-array v0, v0, [Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->START_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->SAVE_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->RESULTS_STANDINGS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->END_OF_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4309
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const-string v1, "INPUT_ORDERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    .line 4310
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const-string v1, "LOAD_AI_RTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOAD_AI_RTO:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    .line 4311
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const-string v1, "TURN_ACTIONS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->TURN_ACTIONS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    .line 4312
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const-string v1, "LOADING_NEXT_TURN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->LOADING_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    .line 4313
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const-string v1, "START_NEXT_TURN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->START_NEXT_TURN:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    .line 4314
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const-string v1, "SAVE_THE_GAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->SAVE_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    .line 4315
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const-string v1, "RESULTS_STANDINGS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->RESULTS_STANDINGS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    .line 4316
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const-string v1, "END_OF_THE_GAME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->END_OF_THE_GAME:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    .line 4308
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->$values()[Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 4308
    const-class v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    return-object v0
.end method

.method public static values()[Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;
    .registers 1

    .line 4308
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->$VALUES:[Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    invoke-virtual {v0}, [Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    return-object v0
.end method

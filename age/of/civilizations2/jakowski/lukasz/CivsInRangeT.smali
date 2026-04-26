.class public Lage/of/civilizations2/jakowski/lukasz/CivsInRangeT;
.super Ljava/lang/Thread;
.source "CivsInRangeT.java"


# static fields
.field public static DONE_CIVS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/CivsInRangeT;->DONE_CIVS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 16
    const/4 v0, 0x1

    :try_start_1
    sput v0, Lage/of/civilizations2/jakowski/lukasz/CivsInRangeT;->DONE_CIVS:I

    .line 18
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 19
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getNumOfProvs()I

    move-result v2

    if-lez v2, :cond_2b

    .line 20
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->oAI:Lage/of/civilizations2/jakowski/lukasz/AI/AI;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getAIStyleID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/AI/AI;->getAIStyle(I)Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/AI/AI_Playstyle/AIPlaystyle;->diplomacyActions_BuildCivsInRange(I)V

    .line 23
    :cond_2b
    sput v1, Lage/of/civilizations2/jakowski/lukasz/CivsInRangeT;->DONE_CIVS:I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_3d

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 27
    .end local v1  # "i":I
    :cond_30
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CivsInRangeT;->DONE_CIVS:I

    .line 28
    nop

    .line 30
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 31
    return-void

    .line 27
    :catchall_3d
    move-exception v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/CivsInRangeT;->DONE_CIVS:I

    .line 28
    goto :goto_48

    :goto_47
    throw v0

    :goto_48
    goto :goto_47
.end method

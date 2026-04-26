.class public Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;
.super Ljava/lang/Object;
.source "MessageBox_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iMessagesSize:I

.field public lMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Messages/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->iMessagesSize:I

    return-void
.end method


# virtual methods
.method public final addMessage(Lage/of/civilizations2/jakowski/lukasz/Messages/Message;)V
    .registers 6
    .param p1, "nMessage"  # Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    .line 50
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->DISEASE:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v0, v1, :cond_27

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "nNumOfDisseaseMessages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->getMessagesSize()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 54
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->DISEASE:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v2, v3, :cond_1e

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 53
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 59
    .end local v1  # "i":I
    :cond_21
    const/4 v1, 0x2

    if-le v0, v1, :cond_25

    .line 60
    return-void

    .line 62
    .end local v0  # "nNumOfDisseaseMessages":I
    :cond_25
    goto/16 :goto_1cb

    .line 63
    :cond_27
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->NUKE_OUR_PROVINCE:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v0, v1, :cond_2f

    goto/16 :goto_1cb

    .line 66
    :cond_2f
    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->NEIGH_WAR:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v0, v1, :cond_196

    iget-object v0, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->NEIGH_TRUCE:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v0, v1, :cond_3d

    goto/16 :goto_196

    .line 74
    :cond_3d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3e
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->getMessagesSize()I

    move-result v1

    if-ge v0, v1, :cond_1cb

    .line 75
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->fromCivID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->fromCivID:I

    if-ne v1, v2, :cond_192

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v1, v2, :cond_192

    .line 76
    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->TECHNOLOGY_RESEARCHED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v1, v2, :cond_73

    .line 77
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->numOfTurnsLeft:I

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->numOfTurnsLeft:I

    .line 78
    return-void

    .line 80
    :cond_73
    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->UNCIVILIZED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v1, v2, :cond_86

    .line 81
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->numOfTurnsLeft:I

    iput v2, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->numOfTurnsLeft:I

    .line 82
    return-void

    .line 84
    :cond_86
    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->GIFT:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->LOAN_REQUEST:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->LOAN_REQUEST_ACCEPTED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->LOAN_REQUEST_REJECTED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->WE_CAN_SIGN_PEACE:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->WE_CAN_SIGN_PEACE_STATUS_QUO:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->GIFT_REFUSED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->GIFT_ACCEPTED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->PLUNDER_REPORT:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->PLUNDER_REPORT_PLUNDRED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->REVOLT:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->JOINED_A_WAR:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->TRANSFER_CONTROL:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->VASSALIZATION_ACCEPTED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->VASSALIZATION_REJECTED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->TRANSFER_CONTROL_REFUSED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->TRANSFER_CONTROL_ACCEPTED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->PROVINCES_NOT_SUPPLIED_STRAVES:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->PROVINCES_NOT_SUPPLIED_LOST_CONTROL:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->PROVINCES_NOT_SUPPLIED_LOST_CONTROL_ENEMY_LOST:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->PROVINCES_LOST_CONTROL:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->TRUCE:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->TRUCE_EXPIRED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->LOAN_REPAID:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->WAR_DECLARED_ON_ALLY_DENY:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->WAR_DECLARED_ON_ALLY_JOINED:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->BULIT_FARM:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->BULIT_PORT:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->BULIT_TOWER:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->BULIT_FORT:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->BULIT_LIBRARY:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->BUILT_ARMOURY:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->BUILT_WORKSHOP:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->FESTIVAL_IS_OVER:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->ASSIMILATION_IS_OVER:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->INVEST_IS_OVER:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->INVEST_IS_OVER_FOREIGN:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->INVEST_IS_OVER_FOREIGN_BUILD:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->RECEIVING_FOREIGN_INVEST:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->RECEIVING_FOREIGN_INVEST_BUILD:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->INVEST_IS_OVER_DEVELOPMENT:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-eq v1, v2, :cond_17d

    .line 136
    return-void

    .line 138
    :cond_17d
    iget-object v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->TRANSFER_CONTROL:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v1, v2, :cond_192

    iget v1, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->iValue:I

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->iValue:I

    if-ne v1, v2, :cond_192

    .line 139
    return-void

    .line 74
    :cond_192
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3e

    .line 67
    .end local v0  # "i":I
    :cond_196
    :goto_196
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_197
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->getMessagesSize()I

    move-result v1

    if-ge v0, v1, :cond_1cb

    .line 68
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->fromCivID:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->fromCivID:I

    if-ne v1, v2, :cond_1c8

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->iValue:I

    iget v2, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->iValue:I

    if-ne v1, v2, :cond_1c8

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    iget-object v2, p1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v1, v2, :cond_1c8

    .line 69
    return-void

    .line 67
    :cond_1c8
    add-int/lit8 v0, v0, 0x1

    goto :goto_197

    .line 145
    .end local v0  # "i":I
    :cond_1cb
    :goto_1cb
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->iMessagesSize:I

    .line 147
    return-void
.end method

.method public final clearMessages()V
    .registers 2

    .line 175
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->iMessagesSize:I

    .line 177
    return-void
.end method

.method public getMessage(I)Lage/of/civilizations2/jakowski/lukasz/Messages/Message;
    .registers 3
    .param p1, "i"  # I

    .line 171
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    return-object v0
.end method

.method public final getMessagesSize()I
    .registers 2

    .line 180
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->iMessagesSize:I

    return v0
.end method

.method public final removeMessage(I)V
    .registers 3
    .param p1, "i"  # I

    .line 151
    :try_start_0
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->iMessagesSize:I
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_d} :catch_e

    .line 155
    goto :goto_f

    .line 153
    :catch_e
    move-exception v0

    .line 156
    :goto_f
    return-void
.end method

.method public final removeMessage_TypeFrom(ILage/of/civilizations2/jakowski/lukasz/Messages/MessageType;)V
    .registers 5
    .param p1, "nFromCivID"  # I
    .param p2, "nType"  # Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->getMessagesSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 161
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->getMessage(I)Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    move-result-object v1

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->fromCivID:I

    if-ne v1, p1, :cond_1b

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->getMessage(I)Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v1, p2, :cond_1b

    .line 162
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->removeMessage(I)V
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_1b} :catch_1f

    .line 160
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 167
    .end local v0  # "i":I
    :cond_1e
    goto :goto_20

    .line 165
    :catch_1f
    move-exception v0

    .line 168
    :goto_20
    return-void
.end method

.method public final updateNextTurn(I)V
    .registers 5
    .param p1, "nCivID"  # I

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->getMessagesSize()I

    move-result v1

    if-ge v0, v1, :cond_78

    .line 26
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->updateNextTurn()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 27
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->requestsResponse:Z

    if-nez v1, :cond_4b

    .line 28
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->GIFT:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    if-ne v1, v2, :cond_3a

    .line 29
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->onAccept(I)V

    .line 32
    :cond_3a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->iMessagesSize:I

    move v0, v2

    goto :goto_75

    .line 35
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_4b
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIsPlayer()Z

    move-result v1

    if-nez v1, :cond_75

    .line 36
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/Messages/Message;->numOfTurnsLeft:I

    const/16 v2, -0x19

    if-ge v1, v2, :cond_75

    .line 37
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .restart local v2  # "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->lMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageBox_GameData;->iMessagesSize:I

    move v0, v2

    .line 25
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_75
    :goto_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    .end local v0  # "i":I
    :cond_78
    return-void
.end method

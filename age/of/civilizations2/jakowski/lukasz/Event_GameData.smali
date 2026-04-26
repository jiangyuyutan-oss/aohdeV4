.class public Lage/of/civilizations2/jakowski/lukasz/Event_GameData;
.super Ljava/lang/Object;
.source "Event_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

.field private eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

.field private event_PopUp:Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

.field private iCivID_Recipient:I

.field public isMission:Z

.field public lDecisions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Event_Decision;",
            ">;"
        }
    .end annotation
.end field

.field public lTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;",
            ">;"
        }
    .end annotation
.end field

.field public missionDesc:Ljava/lang/String;

.field private repeatable:Z

.field private sEventName:Ljava/lang/String;

.field private sEventPicture:Ljava/lang/String;

.field public sEventSFX:Ljava/lang/String;

.field private sEventTag:Ljava/lang/String;

.field public tempTAG:Ljava/lang/String;

.field private wasFired:Z

.field private wasTriedToRunOnce:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventPicture:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasFired:Z

    .line 34
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasTriedToRunOnce:Z

    .line 35
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->repeatable:Z

    .line 37
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->iCivID_Recipient:I

    .line 38
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->event_PopUp:Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    .line 43
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Date;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    .line 44
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    invoke-direct {v2}, Lage/of/civilizations2/jakowski/lukasz/Event_Date;-><init>()V

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    .line 160
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventSFX:Ljava/lang/String;

    .line 162
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->isMission:Z

    .line 164
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->missionDesc:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->tempTAG:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventTag:Ljava/lang/String;

    if-nez v0, :cond_63

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventTag:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    .line 24
    :cond_63
    return-void
.end method


# virtual methods
.method public final addNewTrigger()V
    .registers 3

    .line 129
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public final checkDecisions()V
    .registers 4

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 58
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->lOutcomes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Decision;->sTitle:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 59
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lDecisions:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .end local v0  # "i":I
    .local v2, "i":I
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v2

    .line 57
    .end local v2  # "i":I
    .restart local v0  # "i":I
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    .end local v0  # "i":I
    :cond_36
    return-void
.end method

.method public final checkTriggers()V
    .registers 3

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTriggersSize()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 50
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    move-result-object v1

    iget-object v1, v1, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;->lConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    .line 51
    add-int/lit8 v1, v0, -0x1

    .end local v0  # "i":I
    .local v1, "i":I
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->removeTrigger(I)V

    move v0, v1

    .line 49
    .end local v1  # "i":I
    .restart local v0  # "i":I
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    .end local v0  # "i":I
    :cond_1c
    return-void
.end method

.method public final getCivID()I
    .registers 2

    .line 81
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->iCivID_Recipient:I

    return v0
.end method

.method public final getEventDate_Since()Lage/of/civilizations2/jakowski/lukasz/Event_Date;
    .registers 2

    .line 97
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    return-object v0
.end method

.method public final getEventDate_Until()Lage/of/civilizations2/jakowski/lukasz/Event_Date;
    .registers 2

    .line 107
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    return-object v0
.end method

.method public final getEventName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventPicture()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventPicture:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventTag()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getEvent_PopUp()Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;
    .registers 2

    .line 117
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->event_PopUp:Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;

    return-object v0
.end method

.method public final getRepeatable()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->repeatable:Z

    return v0
.end method

.method public final getTrigger(I)Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;
    .registers 3
    .param p1, "i"  # I

    .line 125
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Event_Trigger;

    return-object v0
.end method

.method public final getTriggersSize()I
    .registers 2

    .line 121
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getWasFired()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasFired:Z

    return v0
.end method

.method public final getWasTriedToRunOnce()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasTriedToRunOnce:Z

    return v0
.end method

.method public final removeTrigger(I)V
    .registers 3
    .param p1, "i"  # I

    .line 133
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->lTriggers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public final setCivID(I)V
    .registers 2
    .param p1, "iCivID_Recipient"  # I

    .line 85
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->iCivID_Recipient:I

    .line 86
    return-void
.end method

.method public final setEventDate_Since(III)V
    .registers 5
    .param p1, "nDay"  # I
    .param p2, "nMonth"  # I
    .param p3, "nYear"  # I

    .line 101
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    .line 102
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p2, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    .line 103
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Since:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p3, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    .line 104
    return-void
.end method

.method public final setEventDate_Until(III)V
    .registers 5
    .param p1, "nDay"  # I
    .param p2, "nMonth"  # I
    .param p3, "nYear"  # I

    .line 111
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p1, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    .line 112
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p2, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    .line 113
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->eventDate_Until:Lage/of/civilizations2/jakowski/lukasz/Event_Date;

    iput p3, v0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    .line 114
    return-void
.end method

.method public final setEventName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sEventName"  # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final setEventPicture(Ljava/lang/String;)V
    .registers 2
    .param p1, "sEventPicture"  # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventPicture:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public final setEventTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "sEventTag"  # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->sEventTag:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public final setRepeatable(Z)V
    .registers 2
    .param p1, "repeatable"  # Z

    .line 157
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->repeatable:Z

    .line 158
    return-void
.end method

.method public final setWasFired(Z)V
    .registers 2
    .param p1, "wasFired"  # Z

    .line 93
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasFired:Z

    .line 94
    return-void
.end method

.method public final setWasTriedToRunOnce(Z)V
    .registers 2
    .param p1, "wasTriedToRunOnce"  # Z

    .line 149
    iput-boolean p1, p0, Lage/of/civilizations2/jakowski/lukasz/Event_GameData;->wasTriedToRunOnce:Z

    .line 150
    return-void
.end method

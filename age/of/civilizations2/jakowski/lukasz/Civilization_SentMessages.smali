.class public Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;
.super Ljava/lang/Object;
.source "Civilization_SentMessages.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public iSentInTurnID:I

.field public iToCivID:I

.field public messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;


# direct methods
.method public constructor <init>(ILage/of/civilizations2/jakowski/lukasz/Messages/MessageType;)V
    .registers 4
    .param p1, "iToCivID"  # I
    .param p2, "messageType"  # Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;->GIFT:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    .line 22
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iToCivID:I

    .line 23
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->messageType:Lage/of/civilizations2/jakowski/lukasz/Messages/MessageType;

    .line 24
    sget v0, Lage/of/civilizations2/jakowski/lukasz/GameCalendar;->TURNID:I

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Civilization_SentMessages;->iSentInTurnID:I

    .line 25
    return-void
.end method

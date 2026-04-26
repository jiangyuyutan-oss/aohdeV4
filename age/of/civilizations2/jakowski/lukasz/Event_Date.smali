.class public Lage/of/civilizations2/jakowski/lukasz/Event_Date;
.super Ljava/lang/Object;
.source "Event_Date.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NOT_SET_UPED:I = 0x98967f

.field private static final serialVersionUID:J = -0x402b55d3e754f70cL


# instance fields
.field public iEventDay:I

.field public iEventMonth:I

.field public iEventYear:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventDay:I

    .line 16
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventMonth:I

    .line 17
    const v0, 0x98967f

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_Date;->iEventYear:I

    return-void
.end method

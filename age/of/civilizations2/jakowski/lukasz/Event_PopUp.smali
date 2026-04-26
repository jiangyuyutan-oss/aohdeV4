.class public Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;
.super Ljava/lang/Object;
.source "Event_PopUp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public sText:Ljava/lang/String;

.field public showPopUp:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->showPopUp:Z

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Event_PopUp;->sText:Ljava/lang/String;

    return-void
.end method

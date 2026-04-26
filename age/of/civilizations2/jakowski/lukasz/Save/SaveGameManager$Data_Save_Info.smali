.class public Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager$Data_Save_Info;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Save/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data_Save_Info"
.end annotation


# instance fields
.field public Civs:I

.field public GameDate:Ljava/lang/String;

.field public PLAYER_TAG:Ljava/lang/String;

.field public Turn:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

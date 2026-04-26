.class public Lage/of/civilizations2/jakowski/lukasz/Game_Wonders$Wonder;
.super Ljava/lang/Object;
.source "Game_Wonders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lage/of/civilizations2/jakowski/lukasz/Game_Wonders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wonder"
.end annotation


# instance fields
.field public Image:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public SinceYear:I

.field public UntilYear:I

.field public Wiki:Ljava/lang/String;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

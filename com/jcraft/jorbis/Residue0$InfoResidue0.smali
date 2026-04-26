.class Lcom/jcraft/jorbis/Residue0$InfoResidue0;
.super Ljava/lang/Object;
.source "Residue0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/Residue0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoResidue0"
.end annotation


# instance fields
.field ampmax:[F

.field begin:I

.field blimit:[I

.field booklist:[I

.field end:I

.field entmax:[F

.field groupbook:I

.field grouping:I

.field partitions:I

.field secondstages:[I

.field subgrp:[I

.field final synthetic this$0:Lcom/jcraft/jorbis/Residue0;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Residue0;)V
    .registers 3

    .line 311
    iput-object p1, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->this$0:Lcom/jcraft/jorbis/Residue0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/16 p1, 0x40

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->secondstages:[I

    .line 321
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->booklist:[I

    .line 324
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->entmax:[F

    .line 325
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->ampmax:[F

    .line 326
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->subgrp:[I

    .line 327
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jcraft/jorbis/Residue0$InfoResidue0;->blimit:[I

    return-void
.end method

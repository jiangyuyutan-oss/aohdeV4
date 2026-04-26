.class Lcom/jcraft/jorbis/Residue0$LookResidue0;
.super Ljava/lang/Object;
.source "Residue0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/Residue0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LookResidue0"
.end annotation


# instance fields
.field decodemap:[[I

.field frames:I

.field fullbooks:[Lcom/jcraft/jorbis/CodeBook;

.field info:Lcom/jcraft/jorbis/Residue0$InfoResidue0;

.field map:I

.field partbooks:[[I

.field parts:I

.field partvals:I

.field phrasebits:I

.field phrasebook:Lcom/jcraft/jorbis/CodeBook;

.field postbits:I

.field stages:I

.field final synthetic this$0:Lcom/jcraft/jorbis/Residue0;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Residue0;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/jcraft/jorbis/Residue0$LookResidue0;->this$0:Lcom/jcraft/jorbis/Residue0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

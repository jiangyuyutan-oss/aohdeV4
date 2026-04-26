.class Lcom/jcraft/jorbis/Mapping0$LookMapping0;
.super Ljava/lang/Object;
.source "Mapping0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/Mapping0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LookMapping0"
.end annotation


# instance fields
.field ch:I

.field decay:[[F

.field floor_func:[Lcom/jcraft/jorbis/FuncFloor;

.field floor_look:[Ljava/lang/Object;

.field floor_state:[Ljava/lang/Object;

.field lastframe:I

.field map:Lcom/jcraft/jorbis/Mapping0$InfoMapping0;

.field mode:Lcom/jcraft/jorbis/InfoMode;

.field psy_look:[Lcom/jcraft/jorbis/PsyLook;

.field residue_func:[Lcom/jcraft/jorbis/FuncResidue;

.field residue_look:[Ljava/lang/Object;

.field final synthetic this$0:Lcom/jcraft/jorbis/Mapping0;

.field time_func:[Lcom/jcraft/jorbis/FuncTime;

.field time_look:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Mapping0;)V
    .registers 2

    .line 356
    iput-object p1, p0, Lcom/jcraft/jorbis/Mapping0$LookMapping0;->this$0:Lcom/jcraft/jorbis/Mapping0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

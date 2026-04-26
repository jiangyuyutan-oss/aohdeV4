.class Lcom/jcraft/jorbis/CodeBook$DecodeAux;
.super Ljava/lang/Object;
.source "CodeBook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/CodeBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecodeAux"
.end annotation


# instance fields
.field aux:I

.field ptr0:[I

.field ptr1:[I

.field tab:[I

.field tabl:[I

.field tabn:I

.field final synthetic this$0:Lcom/jcraft/jorbis/CodeBook;


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/CodeBook;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/jcraft/jorbis/CodeBook$DecodeAux;->this$0:Lcom/jcraft/jorbis/CodeBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

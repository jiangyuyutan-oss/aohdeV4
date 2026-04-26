.class abstract Lcom/jcraft/jorbis/FuncResidue;
.super Ljava/lang/Object;
.source "FuncResidue.java"


# static fields
.field public static residue_P:[Lcom/jcraft/jorbis/FuncResidue;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jcraft/jorbis/FuncResidue;

    new-instance v1, Lcom/jcraft/jorbis/Residue0;

    invoke-direct {v1}, Lcom/jcraft/jorbis/Residue0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/jcraft/jorbis/Residue1;

    invoke-direct {v1}, Lcom/jcraft/jorbis/Residue1;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/jcraft/jorbis/Residue2;

    invoke-direct {v1}, Lcom/jcraft/jorbis/Residue2;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/jcraft/jorbis/FuncResidue;->residue_P:[Lcom/jcraft/jorbis/FuncResidue;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract free_info(Ljava/lang/Object;)V
.end method

.method abstract free_look(Ljava/lang/Object;)V
.end method

.method abstract inverse(Lcom/jcraft/jorbis/Block;Ljava/lang/Object;[[F[II)I
.end method

.method abstract look(Lcom/jcraft/jorbis/DspState;Lcom/jcraft/jorbis/InfoMode;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract pack(Ljava/lang/Object;Lcom/jcraft/jogg/Buffer;)V
.end method

.method abstract unpack(Lcom/jcraft/jorbis/Info;Lcom/jcraft/jogg/Buffer;)Ljava/lang/Object;
.end method

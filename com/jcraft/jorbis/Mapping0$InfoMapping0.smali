.class Lcom/jcraft/jorbis/Mapping0$InfoMapping0;
.super Ljava/lang/Object;
.source "Mapping0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/Mapping0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoMapping0"
.end annotation


# instance fields
.field chmuxlist:[I

.field coupling_ang:[I

.field coupling_mag:[I

.field coupling_steps:I

.field floorsubmap:[I

.field psysubmap:[I

.field residuesubmap:[I

.field submaps:I

.field final synthetic this$0:Lcom/jcraft/jorbis/Mapping0;

.field timesubmap:[I


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Mapping0;)V
    .registers 4

    .line 331
    iput-object p1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->this$0:Lcom/jcraft/jorbis/Mapping0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/16 p1, 0x100

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    .line 335
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    .line 336
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    .line 337
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    .line 338
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->psysubmap:[I

    .line 341
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    .line 342
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    return-void
.end method


# virtual methods
.method free()V
    .registers 2

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->chmuxlist:[I

    .line 346
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->timesubmap:[I

    .line 347
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->floorsubmap:[I

    .line 348
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->residuesubmap:[I

    .line 349
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->psysubmap:[I

    .line 351
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_mag:[I

    .line 352
    iput-object v0, p0, Lcom/jcraft/jorbis/Mapping0$InfoMapping0;->coupling_ang:[I

    .line 353
    return-void
.end method

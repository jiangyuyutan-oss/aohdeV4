.class Lcom/jcraft/jorbis/Floor1$InfoFloor1;
.super Ljava/lang/Object;
.source "Floor1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jorbis/Floor1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoFloor1"
.end annotation


# static fields
.field static final VIF_CLASS:I = 0x10

.field static final VIF_PARTS:I = 0x1f

.field static final VIF_POSIT:I = 0x3f


# instance fields
.field class_book:[I

.field class_dim:[I

.field class_subbook:[[I

.field class_subs:[I

.field maxerr:F

.field maxover:F

.field maxunder:F

.field mult:I

.field n:I

.field partitionclass:[I

.field partitions:I

.field postlist:[I

.field final synthetic this$0:Lcom/jcraft/jorbis/Floor1;

.field twofitatten:F

.field twofitminsize:I

.field twofitminused:I

.field twofitweight:I

.field unusedmin_n:I

.field unusedminsize:I


# direct methods
.method constructor <init>(Lcom/jcraft/jorbis/Floor1;)V
    .registers 4

    .line 511
    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->this$0:Lcom/jcraft/jorbis/Floor1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/16 p1, 0x1f

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    .line 489
    const/16 p1, 0x10

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    .line 490
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    .line 491
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    .line 492
    new-array p1, p1, [[I

    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    .line 495
    const/16 p1, 0x41

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    .line 512
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_24
    iget-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    array-length v0, v0

    if-ge p1, v0, :cond_34

    .line 513
    iget-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    const/16 v1, 0x8

    new-array v1, v1, [I

    aput-object v1, v0, p1

    .line 512
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    .line 515
    .end local p1  # "i":I
    :cond_34
    return-void
.end method


# virtual methods
.method copy_info()Ljava/lang/Object;
    .registers 9

    .line 527
    move-object v0, p0

    .line 528
    .local v0, "info":Lcom/jcraft/jorbis/Floor1$InfoFloor1;
    new-instance v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;

    iget-object v2, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->this$0:Lcom/jcraft/jorbis/Floor1;

    invoke-direct {v1, v2}, Lcom/jcraft/jorbis/Floor1$InfoFloor1;-><init>(Lcom/jcraft/jorbis/Floor1;)V

    .line 530
    .local v1, "ret":Lcom/jcraft/jorbis/Floor1$InfoFloor1;
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitions:I

    .line 531
    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    iget-object v3, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    iget-object v3, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    const/16 v4, 0x10

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    iget-object v3, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    iget-object v3, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2e
    if-ge v2, v4, :cond_40

    .line 538
    iget-object v3, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v3, v3, v2

    iget-object v6, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    aget-object v6, v6, v2

    const/16 v7, 0x8

    invoke-static {v3, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 541
    .end local v2  # "j":I
    :cond_40
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->mult:I

    .line 542
    iget-object v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    iget-object v3, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    const/16 v4, 0x41

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxover:F

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxover:F

    .line 545
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxunder:F

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxunder:F

    .line 546
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxerr:F

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->maxerr:F

    .line 548
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitminsize:I

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitminsize:I

    .line 549
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitminused:I

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitminused:I

    .line 550
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitweight:I

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitweight:I

    .line 551
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitatten:F

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->twofitatten:F

    .line 552
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->unusedminsize:I

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->unusedminsize:I

    .line 553
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->unusedmin_n:I

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->unusedmin_n:I

    .line 555
    iget v2, v0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->n:I

    iput v2, v1, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->n:I

    .line 557
    return-object v1
.end method

.method free()V
    .registers 3

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->partitionclass:[I

    .line 519
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_dim:[I

    .line 520
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subs:[I

    .line 521
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_book:[I

    .line 522
    move-object v1, v0

    check-cast v1, [[I

    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->class_subbook:[[I

    .line 523
    iput-object v0, p0, Lcom/jcraft/jorbis/Floor1$InfoFloor1;->postlist:[I

    .line 524
    return-void
.end method

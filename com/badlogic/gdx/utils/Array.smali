.class public Lcom/badlogic/gdx/utils/Array;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Array$ArrayIterable;,
        Lcom/badlogic/gdx/utils/Array$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

.field public ordered:Z

.field private predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Predicate$PredicateIterable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 43
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"  # I

    .line 48
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 78
    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 79
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .param p1, "arrayType"  # Ljava/lang/Class;

    .line 70
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 71
    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 4
    .param p1, "ordered"  # Z
    .param p2, "capacity"  # I

    .line 54
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    .line 56
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .registers 5
    .param p1, "ordered"  # Z
    .param p2, "capacity"  # I
    .param p3, "arrayType"  # Ljava/lang/Class;

    .line 63
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    .line 65
    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .registers 8
    .param p1, "ordered"  # Z
    .param p3, "start"  # I
    .param p4, "count"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    .line 95
    iput p4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    .line 87
    return-void
.end method

.method public static of(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 605
    .local p0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static of(ZILjava/lang/Class;)Lcom/badlogic/gdx/utils/Array;
    .registers 4
    .param p0, "ordered"  # Z
    .param p1, "capacity"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 610
    .local p2, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    return-object v0
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 615
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 101
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_18

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 102
    :cond_18
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    .line 103
    return-void
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value1":Ljava/lang/Object;, "TT;"
    .local p2, "value2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 107
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 108
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    .line 109
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 110
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 111
    return-void
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value1":Ljava/lang/Object;, "TT;"
    .local p2, "value2":Ljava/lang/Object;, "TT;"
    .local p3, "value3":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 115
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x2

    array-length v2, v0

    if-lt v1, v2, :cond_1a

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 116
    :cond_1a
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    .line 117
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 118
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 119
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 120
    return-void
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value1":Ljava/lang/Object;, "TT;"
    .local p2, "value2":Ljava/lang/Object;, "TT;"
    .local p3, "value3":Ljava/lang/Object;, "TT;"
    .local p4, "value4":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 124
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x3

    array-length v2, v0

    if-lt v1, v2, :cond_1b

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v1, v1

    const v2, 0x3fe66666  # 1.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 125
    :cond_1b
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aput-object p1, v0, v1

    .line 126
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 127
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x2

    aput-object p3, v0, v1

    .line 128
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x3

    aput-object p4, v0, v1

    .line 129
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 130
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    .line 134
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;II)V
    .registers 7
    .param p2, "start"  # I
    .param p3, "count"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;II)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v0, v1, :cond_c

    .line 139
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    .line 140
    return-void

    .line 138
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start + count must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    .line 144
    return-void
.end method

.method public addAll([Ljava/lang/Object;II)V
    .registers 9
    .param p2, "start"  # I
    .param p3, "count"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 148
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v1, p3

    .line 149
    .local v1, "sizeNeeded":I
    array-length v2, v0

    if-le v1, v2, :cond_1d

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v3, v3

    const/high16 v4, 0x3fe00000  # 1.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 150
    :cond_1d
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 152
    return-void
.end method

.method public clear()V
    .registers 5

    .line 385
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 386
    iput v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 387
    return-void
.end method

.method public contains(Ljava/lang/Object;Z)Z
    .registers 7
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 200
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 201
    .local v1, "i":I
    if-nez p2, :cond_1a

    if-nez p1, :cond_b

    goto :goto_1a

    .line 205
    :cond_b
    :goto_b
    if-ltz v1, :cond_25

    .line 206
    add-int/lit8 v3, v1, -0x1

    .end local v1  # "i":I
    .local v3, "i":I
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    move v1, v3

    goto :goto_b

    .line 202
    .end local v3  # "i":I
    .restart local v1  # "i":I
    :cond_1a
    :goto_1a
    if-ltz v1, :cond_25

    .line 203
    add-int/lit8 v3, v1, -0x1

    .end local v1  # "i":I
    .restart local v3  # "i":I
    aget-object v1, v0, v1

    if-ne v1, p1, :cond_23

    return v2

    :cond_23
    move v1, v3

    goto :goto_1a

    .line 208
    .end local v3  # "i":I
    .restart local v1  # "i":I
    :cond_25
    const/4 v2, 0x0

    return v2
.end method

.method public containsAll(Lcom/badlogic/gdx/utils/Array;Z)Z
    .registers 7
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;Z)Z"
        }
    .end annotation

    .line 215
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 216
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_14

    .line 217
    aget-object v3, v0, v1

    invoke-virtual {p0, v3, p2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x0

    return v3

    .line 216
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 218
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method public containsAny(Lcom/badlogic/gdx/utils/Array;Z)Z
    .registers 7
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;Z)Z"
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "values":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 226
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_5
    if-ge v1, v2, :cond_14

    .line 227
    aget-object v3, v0, v1

    invoke-virtual {p0, v3, p2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    return v3

    .line 226
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 228
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)[Ljava/lang/Object;
    .registers 6
    .param p1, "additionalCapacity"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 401
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    if-ltz p1, :cond_21

    .line 402
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v0, p1

    .line 403
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_1e

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 404
    :cond_1e
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object v1

    .line 401
    .end local v0  # "sizeNeeded":I
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "object"  # Ljava/lang/Object;

    .line 547
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 548
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 549
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_f

    return v2

    .line 550
    :cond_f
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 551
    .local v1, "array":Lcom/badlogic/gdx/utils/Array;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-nez v3, :cond_17

    return v2

    .line 552
    :cond_17
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 553
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v3, v4, :cond_1e

    return v2

    .line 554
    :cond_1e
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .local v4, "items1":[Ljava/lang/Object;
    iget-object v5, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 555
    .local v5, "items2":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v3, :cond_38

    .line 556
    aget-object v7, v4, v6

    .local v7, "o1":Ljava/lang/Object;
    aget-object v8, v5, v6

    .line 557
    .local v8, "o2":Ljava/lang/Object;
    if-nez v7, :cond_2e

    if-nez v8, :cond_34

    goto :goto_35

    :cond_2e
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    :cond_34
    return v2

    .line 555
    .end local v7  # "o1":Ljava/lang/Object;
    .end local v8  # "o2":Ljava/lang/Object;
    :cond_35
    :goto_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 559
    .end local v6  # "i":I
    :cond_38
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "object"  # Ljava/lang/Object;

    .line 564
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 565
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 566
    :cond_a
    instance-of v1, p1, Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_f

    return v2

    .line 567
    :cond_f
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    .line 568
    .local v1, "array":Lcom/badlogic/gdx/utils/Array;
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-nez v3, :cond_17

    return v2

    .line 569
    :cond_17
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 570
    .local v3, "n":I
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v3, v4, :cond_1e

    return v2

    .line 571
    :cond_1e
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .local v4, "items1":[Ljava/lang/Object;
    iget-object v5, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 572
    .local v5, "items2":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v3, :cond_2f

    .line 573
    aget-object v7, v4, v6

    aget-object v8, v5, v6

    if-eq v7, v8, :cond_2c

    return v2

    .line 572
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 574
    .end local v6  # "i":I
    :cond_2f
    return v0
.end method

.method public first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 370
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_a

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 370
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 155
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 7

    .line 534
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 535
    :cond_9
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 536
    .local v0, "items":[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 537
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_f
    if-ge v2, v3, :cond_1f

    .line 538
    mul-int/lit8 v1, v1, 0x1f

    .line 539
    aget-object v4, v0, v2

    .line 540
    .local v4, "item":Ljava/lang/Object;
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v1, v5

    .line 537
    .end local v4  # "item":Ljava/lang/Object;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 542
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_1f
    return v1
.end method

.method public indexOf(Ljava/lang/Object;Z)I
    .registers 7
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 237
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p2, :cond_18

    if-nez p1, :cond_7

    goto :goto_18

    .line 241
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_a
    if-ge v1, v2, :cond_25

    .line 242
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return v1

    .line 241
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 238
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_18
    :goto_18
    const/4 v1, 0x0

    .restart local v1  # "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v2  # "n":I
    :goto_1b
    if-ge v1, v2, :cond_25

    .line 239
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_22

    return v1

    .line 238
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 244
    .end local v1  # "i":I
    .end local v2  # "n":I
    :cond_25
    const/4 v1, -0x1

    return v1
.end method

.method public insert(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt p1, v0, :cond_38

    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 167
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_1c

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000  # 1.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v0

    .line 168
    :cond_1c
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v1, :cond_29

    .line 169
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2f

    .line 171
    :cond_29
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v2, v0, p1

    aput-object v2, v0, v1

    .line 172
    :goto_2f
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 173
    aput-object p2, v0, p1

    .line 174
    return-void

    .line 165
    .end local v0  # "items":[Ljava/lang/Object;, "[TT;"
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be > size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertRange(II)V
    .registers 8
    .param p1, "index"  # I
    .param p2, "count"  # I

    .line 179
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt p1, v0, :cond_32

    .line 180
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v0, p2

    .line 181
    .local v0, "sizeNeeded":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_23

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v2, v2

    const/high16 v3, 0x3fe00000  # 1.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 182
    :cond_23
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    add-int v3, p1, p2

    iget v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 184
    return-void

    .line 179
    .end local v0  # "sizeNeeded":I
    :cond_32
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be > size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 381
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array$ArrayIterator<",
            "TT;>;"
        }
    .end annotation

    .line 487
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_b

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    return-object v0

    .line 488
    :cond_b
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    if-nez v0, :cond_16

    new-instance v0, Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    .line 489
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->iterable:Lcom/badlogic/gdx/utils/Array$ArrayIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterable;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 30
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;Z)I
    .registers 6
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 253
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 254
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    if-nez p2, :cond_19

    if-nez p1, :cond_7

    goto :goto_19

    .line 258
    :cond_7
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_27

    .line 259
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v1

    .line 258
    :cond_16
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 255
    .end local v1  # "i":I
    :cond_19
    :goto_19
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .restart local v1  # "i":I
    :goto_1d
    if-ltz v1, :cond_27

    .line 256
    aget-object v2, v0, v1

    if-ne v2, p1, :cond_24

    return v1

    .line 255
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    .line 261
    .end local v1  # "i":I
    :cond_27
    const/4 v1, -0x1

    return v1
.end method

.method public notEmpty()Z
    .registers 2

    .line 376
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 364
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_d

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 364
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pop()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_18

    .line 356
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v0, v0, v1

    .line 358
    .local v0, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 359
    return-object v0

    .line 355
    .end local v0  # "item":Ljava/lang/Object;, "TT;"
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public random()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 517
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(II)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public removeAll(Lcom/badlogic/gdx/utils/Array;Z)Z
    .registers 11
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;Z)Z"
        }
    .end annotation

    .line 324
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 325
    .local v0, "size":I
    move v1, v0

    .line 326
    .local v1, "startSize":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 327
    .local v2, "items":[Ljava/lang/Object;, "[TT;"
    if-eqz p2, :cond_24

    .line 328
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_a
    if-ge v3, v4, :cond_23

    .line 329
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 330
    .local v5, "item":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .local v6, "ii":I
    :goto_11
    if-ge v6, v0, :cond_20

    .line 331
    aget-object v7, v2, v6

    if-ne v5, v7, :cond_1d

    .line 332
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 333
    add-int/lit8 v0, v0, -0x1

    .line 334
    goto :goto_20

    .line 330
    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 328
    .end local v5  # "item":Ljava/lang/Object;, "TT;"
    .end local v6  # "ii":I
    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_23
    goto :goto_44

    .line 339
    :cond_24
    const/4 v3, 0x0

    .restart local v3  # "i":I
    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v4  # "n":I
    :goto_27
    if-ge v3, v4, :cond_44

    .line 340
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 341
    .restart local v5  # "item":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .restart local v6  # "ii":I
    :goto_2e
    if-ge v6, v0, :cond_41

    .line 342
    aget-object v7, v2, v6

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 343
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 344
    add-int/lit8 v0, v0, -0x1

    .line 345
    goto :goto_41

    .line 341
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 339
    .end local v5  # "item":Ljava/lang/Object;, "TT;"
    .end local v6  # "ii":I
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 350
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_44
    :goto_44
    if-eq v0, v1, :cond_48

    const/4 v3, 0x1

    goto :goto_49

    :cond_48
    const/4 v3, 0x0

    :goto_49
    return v3
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .registers 6
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_27

    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 292
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    aget-object v1, v0, p1

    .line 293
    .local v1, "value":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 294
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v2, :cond_1b

    .line 295
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    .line 297
    :cond_1b
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    aget-object v2, v0, v2

    aput-object v2, v0, p1

    .line 298
    :goto_21
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 299
    return-object v1

    .line 290
    .end local v0  # "items":[Ljava/lang/Object;, "[TT;"
    .end local v1  # "value":Ljava/lang/Object;, "TT;"
    :cond_27
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeRange(II)V
    .registers 9
    .param p1, "start"  # I
    .param p2, "end"  # I

    .line 304
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 305
    .local v0, "n":I
    if-ge p2, v0, :cond_58

    .line 306
    if-gt p1, p2, :cond_35

    .line 307
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 308
    .local v1, "items":[Ljava/lang/Object;, "[TT;"
    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    .local v2, "count":I
    sub-int v3, v0, v2

    .line 309
    .local v3, "lastIndex":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/Array;->ordered:Z

    if-eqz v4, :cond_1c

    .line 310
    add-int v4, p1, v2

    add-int v5, p1, v2

    sub-int v5, v0, v5

    invoke-static {v1, v4, v1, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    .line 312
    :cond_1c
    add-int/lit8 v4, p2, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 313
    .local v4, "i":I
    sub-int v5, v0, v4

    invoke-static {v1, v4, v1, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    .end local v4  # "i":I
    :goto_27
    move v4, v3

    .restart local v4  # "i":I
    :goto_28
    if-ge v4, v0, :cond_30

    .line 316
    const/4 v5, 0x0

    aput-object v5, v1, v4

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 317
    .end local v4  # "i":I
    :cond_30
    sub-int v4, v0, v2

    iput v4, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 318
    return-void

    .line 306
    .end local v1  # "items":[Ljava/lang/Object;, "[TT;"
    .end local v2  # "count":I
    .end local v3  # "lastIndex":I
    :cond_35
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start can\'t be > end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_58
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .registers 8
    .param p2, "identity"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 269
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 270
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x1

    if-nez p2, :cond_1c

    if-nez p1, :cond_8

    goto :goto_1c

    .line 278
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_b
    if-ge v2, v3, :cond_2c

    .line 279
    aget-object v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 280
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 281
    return v1

    .line 278
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 271
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_1c
    :goto_1c
    const/4 v2, 0x0

    .restart local v2  # "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .restart local v3  # "n":I
    :goto_1f
    if-ge v2, v3, :cond_2c

    .line 272
    aget-object v4, v0, v2

    if-ne v4, p1, :cond_29

    .line 273
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 274
    return v1

    .line 271
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 285
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_2c
    const/4 v1, 0x0

    return v1
.end method

.method protected resize(I)[Ljava/lang/Object;
    .registers 6
    .param p1, "newSize"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 419
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 420
    .local v1, "newItems":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iput-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 422
    return-object v1
.end method

.method public reverse()V
    .registers 8

    .line 463
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 464
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "lastIndex":I
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    div-int/lit8 v3, v3, 0x2

    .local v3, "n":I
    :goto_b
    if-ge v1, v3, :cond_1a

    .line 465
    sub-int v4, v2, v1

    .line 466
    .local v4, "ii":I
    aget-object v5, v0, v1

    .line 467
    .local v5, "temp":Ljava/lang/Object;, "TT;"
    aget-object v6, v0, v4

    aput-object v6, v0, v1

    .line 468
    aput-object v5, v0, v4

    .line 464
    .end local v4  # "ii":I
    .end local v5  # "temp":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 470
    .end local v1  # "i":I
    .end local v2  # "lastIndex":I
    .end local v3  # "n":I
    :cond_1a
    return-void
.end method

.method public select(Lcom/badlogic/gdx/utils/Predicate;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Predicate<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 497
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "predicate":Lcom/badlogic/gdx/utils/Predicate;, "Lcom/badlogic/gdx/utils/Predicate<TT;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;-><init>(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V

    return-object v0

    .line 498
    :cond_a
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    if-nez v0, :cond_16

    .line 499
    new-instance v0, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;-><init>(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    goto :goto_1b

    .line 501
    :cond_16
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;->set(Ljava/lang/Iterable;Lcom/badlogic/gdx/utils/Predicate;)V

    .line 502
    :goto_1b
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->predicateIterable:Lcom/badlogic/gdx/utils/Predicate$PredicateIterable;

    return-object v0
.end method

.method public selectRanked(Ljava/util/Comparator;I)Ljava/lang/Object;
    .registers 6
    .param p2, "kthLowest"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x1

    if-lt p2, v0, :cond_10

    .line 447
    invoke-static {}, Lcom/badlogic/gdx/utils/Select;->instance()Lcom/badlogic/gdx/utils/Select;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/Select;->select([Ljava/lang/Object;Ljava/util/Comparator;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 445
    :cond_10
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "nth_lowest must be greater than 0, 1 = first, 2 = second..."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectRankedIndex(Ljava/util/Comparator;I)I
    .registers 6
    .param p2, "kthLowest"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TT;>;I)I"
        }
    .end annotation

    .line 456
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x1

    if-lt p2, v0, :cond_10

    .line 459
    invoke-static {}, Lcom/badlogic/gdx/utils/Select;->instance()Lcom/badlogic/gdx/utils/Select;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/badlogic/gdx/utils/Select;->selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result v0

    return v0

    .line 457
    :cond_10
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "nth_lowest must be greater than 0, 1 = first, 2 = second..."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 162
    return-void

    .line 160
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSize(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "newSize"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_11

    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 412
    :cond_11
    iput p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method public shrink()[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 393
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->resize(I)[Ljava/lang/Object;

    .line 394
    :cond_c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method public shuffle()V
    .registers 6

    .line 473
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 474
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_17

    .line 475
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v2

    .line 476
    .local v2, "ii":I
    aget-object v3, v0, v1

    .line 477
    .local v3, "temp":Ljava/lang/Object;, "TT;"
    aget-object v4, v0, v2

    aput-object v4, v0, v1

    .line 478
    aput-object v3, v0, v2

    .line 474
    .end local v2  # "ii":I
    .end local v3  # "temp":Ljava/lang/Object;, "TT;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 480
    .end local v1  # "i":I
    :cond_17
    return-void
.end method

.method public sort()V
    .registers 5

    .line 428
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Sort;->sort([Ljava/lang/Object;II)V

    .line 429
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 433
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {}, Lcom/badlogic/gdx/utils/Sort;->instance()Lcom/badlogic/gdx/utils/Sort;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/badlogic/gdx/utils/Sort;->sort([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 434
    return-void
.end method

.method public swap(II)V
    .registers 7
    .param p1, "first"  # I
    .param p2, "second"  # I

    .line 187
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v1, " >= "

    if-ge p1, v0, :cond_38

    .line 188
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v0, :cond_15

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 190
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    aget-object v1, v0, p1

    .line 191
    .local v1, "firstValue":Ljava/lang/Object;, "TT;"
    aget-object v2, v0, p2

    aput-object v2, v0, p1

    .line 192
    aput-object v1, v0, p2

    .line 193
    return-void

    .line 188
    .end local v0  # "items":[Ljava/lang/Object;, "[TT;"
    .end local v1  # "firstValue":Ljava/lang/Object;, "TT;"
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first can\'t be >= size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)[TV;"
        }
    .end annotation

    .line 528
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 529
    .local v0, "result":[Ljava/lang/Object;, "[TV;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 578
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_7

    const-string v0, "[]"

    return-object v0

    .line 579
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 580
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 581
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 582
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 583
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1c
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2d

    .line 584
    const-string v3, ", "

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 585
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 587
    .end local v2  # "i":I
    :cond_2d
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 588
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "separator"  # Ljava/lang/String;

    .line 592
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 593
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 594
    .local v0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 595
    .local v1, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 596
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    iget v3, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_26

    .line 597
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 598
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 600
    .end local v2  # "i":I
    :cond_26
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public truncate(I)V
    .registers 5
    .param p1, "newSize"  # I

    .line 508
    .local p0, "this":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    if-ltz p1, :cond_17

    .line 509
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v0, p1, :cond_7

    return-void

    .line 510
    :cond_7
    move v0, p1

    .local v0, "i":I
    :goto_8
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_14

    .line 511
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 512
    .end local v0  # "i":I
    :cond_14
    iput p1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 513
    return-void

    .line 508
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

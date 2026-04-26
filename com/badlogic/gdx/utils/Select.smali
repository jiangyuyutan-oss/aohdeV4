.class public Lcom/badlogic/gdx/utils/Select;
.super Ljava/lang/Object;
.source "Select.java"


# static fields
.field private static instance:Lcom/badlogic/gdx/utils/Select;


# instance fields
.field private quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fastMax([Ljava/lang/Object;Ljava/util/Comparator;I)I
    .registers 8
    .param p3, "size"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;I)I"
        }
    .end annotation

    .line 84
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x0

    .line 85
    .local v0, "highestIdx":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_12

    .line 86
    aget-object v2, p1, v1

    aget-object v3, p1, v0

    invoke-interface {p2, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 87
    .local v2, "comparison":I
    if-lez v2, :cond_f

    .line 88
    move v0, v1

    .line 85
    .end local v2  # "comparison":I
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    .end local v1  # "i":I
    :cond_12
    return v0
.end method

.method private fastMin([Ljava/lang/Object;Ljava/util/Comparator;I)I
    .registers 8
    .param p3, "size"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;I)I"
        }
    .end annotation

    .line 72
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x0

    .line 73
    .local v0, "lowestIdx":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_12

    .line 74
    aget-object v2, p1, v1

    aget-object v3, p1, v0

    invoke-interface {p2, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 75
    .local v2, "comparison":I
    if-gez v2, :cond_f

    .line 76
    move v0, v1

    .line 73
    .end local v2  # "comparison":I
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 79
    .end local v1  # "i":I
    :cond_12
    return v0
.end method

.method public static instance()Lcom/badlogic/gdx/utils/Select;
    .registers 1

    .line 39
    sget-object v0, Lcom/badlogic/gdx/utils/Select;->instance:Lcom/badlogic/gdx/utils/Select;

    if-nez v0, :cond_b

    new-instance v0, Lcom/badlogic/gdx/utils/Select;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Select;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Select;->instance:Lcom/badlogic/gdx/utils/Select;

    .line 40
    :cond_b
    sget-object v0, Lcom/badlogic/gdx/utils/Select;->instance:Lcom/badlogic/gdx/utils/Select;

    return-object v0
.end method


# virtual methods
.method public select([Ljava/lang/Object;Ljava/util/Comparator;II)Ljava/lang/Object;
    .registers 7
    .param p3, "kthLowest"  # I
    .param p4, "size"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)TT;"
        }
    .end annotation

    .line 44
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Select;->selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result v0

    .line 45
    .local v0, "idx":I
    aget-object v1, p1, v0

    return-object v1
.end method

.method public selectIndex([Ljava/lang/Object;Ljava/util/Comparator;II)I
    .registers 8
    .param p3, "kthLowest"  # I
    .param p4, "size"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)I"
        }
    .end annotation

    .line 49
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x1

    if-lt p4, v0, :cond_48

    .line 51
    if-gt p3, p4, :cond_25

    .line 56
    if-ne p3, v0, :cond_c

    .line 58
    invoke-direct {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Select;->fastMin([Ljava/lang/Object;Ljava/util/Comparator;I)I

    move-result v0

    .local v0, "idx":I
    goto :goto_24

    .line 59
    .end local v0  # "idx":I
    :cond_c
    if-ne p3, p4, :cond_13

    .line 61
    invoke-direct {p0, p1, p2, p4}, Lcom/badlogic/gdx/utils/Select;->fastMax([Ljava/lang/Object;Ljava/util/Comparator;I)I

    move-result v0

    .restart local v0  # "idx":I
    goto :goto_24

    .line 64
    .end local v0  # "idx":I
    :cond_13
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Select;->quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/badlogic/gdx/utils/QuickSelect;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/QuickSelect;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Select;->quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;

    .line 65
    :cond_1e
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Select;->quickSelect:Lcom/badlogic/gdx/utils/QuickSelect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/QuickSelect;->select([Ljava/lang/Object;Ljava/util/Comparator;II)I

    move-result v0

    .line 67
    .restart local v0  # "idx":I
    :goto_24
    return v0

    .line 52
    .end local v0  # "idx":I
    :cond_25
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kth rank is larger than size. k: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_48
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "cannot select from empty array (size < 1)"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
.super Ljava/lang/Object;
.source "JsonValue.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/JsonValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field current:Lcom/badlogic/gdx/utils/JsonValue;

.field entry:Lcom/badlogic/gdx/utils/JsonValue;

.field final synthetic this$0:Lcom/badlogic/gdx/utils/JsonValue;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue;)V
    .registers 3
    .param p1, "this$0"  # Lcom/badlogic/gdx/utils/JsonValue;

    .line 1228
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->this$0:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1229
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->this$0:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->entry:Lcom/badlogic/gdx/utils/JsonValue;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1233
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->entry:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/JsonValue;",
            ">;"
        }
    .end annotation

    .line 1255
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/JsonValue;
    .registers 2

    .line 1237
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->entry:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    .line 1238
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_11

    .line 1239
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->entry:Lcom/badlogic/gdx/utils/JsonValue;

    .line 1240
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0

    .line 1238
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1228
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->next()Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 1244
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_1c

    .line 1245
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->this$0:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 1246
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->this$0:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->this$0:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_36

    .line 1248
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 1249
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->current:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 1251
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;->this$0:Lcom/badlogic/gdx/utils/JsonValue;

    iget v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 1252
    return-void
.end method

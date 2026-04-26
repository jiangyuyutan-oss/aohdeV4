.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;
.super Ljava/lang/Object;
.source "ButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Button;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final buttons:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field private checkedButtons:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field private lastChecked:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private maxCheckCount:I

.field private minCheckCount:I

.field private uncheckLast:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    .line 30
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    .line 31
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    .line 35
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 36
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "buttons":[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    .line 30
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    .line 31
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->add([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 41
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 42
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    if-eqz p1, :cond_26

    .line 46
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    .line 47
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    if-ge v0, v2, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 48
    .local v0, "shouldCheck":Z
    :goto_18
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 49
    iput-object p0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    .line 50
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 52
    return-void

    .line 45
    .end local v0  # "shouldCheck":Z
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "button cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs add([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "buttons":[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "[TT;"
    if-eqz p1, :cond_f

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_4
    if-ge v0, v1, :cond_e

    .line 57
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->add(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 58
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_e
    return-void

    .line 55
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buttons cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canCheck(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;Z)Z
    .registers 9
    .param p2, "newState"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    iget-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    const/4 v1, 0x0

    if-ne v0, p2, :cond_6

    return v1

    .line 96
    :cond_6
    const/4 v0, 0x1

    if-nez p2, :cond_18

    .line 98
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    if-gt v2, v3, :cond_12

    return v1

    .line 99
    :cond_12
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    goto :goto_54

    .line 102
    :cond_18
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4d

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    if-lt v2, v3, :cond_4d

    .line 103
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    if-nez v2, :cond_2a

    return v1

    .line 104
    :cond_2a
    const/4 v2, 0x0

    .line 105
    .local v2, "tries":I
    :goto_2b
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 106
    .local v3, "old":I
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 107
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->lastChecked:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 108
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 109
    iget-boolean v4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->isChecked:Z

    if-ne v4, p2, :cond_3b

    return v1

    .line 110
    :cond_3b
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    if-ge v4, v5, :cond_44

    goto :goto_4d

    .line 111
    :cond_44
    add-int/lit8 v4, v2, 0x1

    .end local v2  # "tries":I
    .local v4, "tries":I
    const/16 v5, 0xa

    if-le v2, v5, :cond_4b

    return v1

    .line 112
    .end local v3  # "old":I
    :cond_4b
    move v2, v4

    goto :goto_2b

    .line 114
    .end local v4  # "tries":I
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 115
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->lastChecked:Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 118
    :goto_54
    return v0
.end method

.method public clear()V
    .registers 2

    .line 74
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 76
    return-void
.end method

.method public getAllChecked()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getButtons()Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getChecked()Lcom/badlogic/gdx/scenes/scene2d/ui/Button;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    return-object v0

    .line 135
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCheckedIndex()I
    .registers 4

    .line 140
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    return v0

    .line 141
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    if-eqz p1, :cond_11

    .line 62
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->buttonGroup:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->checkedButtons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 65
    return-void

    .line 61
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "button cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs remove([Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    .local p1, "buttons":[Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "[TT;"
    if-eqz p1, :cond_f

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "n":I
    :goto_4
    if-ge v0, v1, :cond_e

    .line 70
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 71
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_e
    return-void

    .line 68
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buttons cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChecked(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"  # Ljava/lang/String;

    .line 80
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    if-eqz p1, :cond_2b

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_7
    if-ge v0, v1, :cond_2a

    .line 82
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 83
    .local v2, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    if-eqz v3, :cond_27

    move-object v3, v2

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 84
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 85
    return-void

    .line 81
    .end local v2  # "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 88
    .end local v0  # "i":I
    .end local v1  # "n":I
    :cond_2a
    return-void

    .line 80
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxCheckCount(I)V
    .registers 2
    .param p1, "maxCheckCount"  # I

    .line 159
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    if-nez p1, :cond_3

    const/4 p1, -0x1

    .line 160
    :cond_3
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->maxCheckCount:I

    .line 161
    return-void
.end method

.method public setMinCheckCount(I)V
    .registers 2
    .param p1, "minCheckCount"  # I

    .line 154
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 155
    return-void
.end method

.method public setUncheckLast(Z)V
    .registers 2
    .param p1, "uncheckLast"  # Z

    .line 167
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->uncheckLast:Z

    .line 168
    return-void
.end method

.method public uncheckAll()V
    .registers 6

    .line 123
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;, "Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 124
    .local v0, "old":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 125
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_a
    if-ge v2, v3, :cond_1a

    .line 126
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->buttons:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    .line 127
    .local v4, "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    .line 125
    .end local v4  # "button":Lcom/badlogic/gdx/scenes/scene2d/ui/Button;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 129
    .end local v2  # "i":I
    .end local v3  # "n":I
    :cond_1a
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->minCheckCount:I

    .line 130
    return-void
.end method

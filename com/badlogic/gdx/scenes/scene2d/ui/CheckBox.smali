.class public Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
    }
.end annotation


# instance fields
.field private image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field private imageCell:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V
    .registers 7
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)V

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->clearChildren()V

    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    .line 46
    .local v0, "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/utils/Scaling;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->imageCell:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 47
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    .line 48
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 49
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getPrefWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getPrefHeight()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->setSize(FF)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 4
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 35
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 5
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"  # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;)V

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .registers 6
    .param p1, "batch"  # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"  # F

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "checkbox":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 67
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_16

    .line 68
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1a

    .line 70
    :cond_16
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOffDisabled:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 72
    :cond_1a
    :goto_1a
    if-nez v0, :cond_59

    .line 73
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isOver()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 74
    .local v1, "over":Z
    :goto_2b
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->isChecked:Z

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_48

    .line 75
    if-eqz v1, :cond_42

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOnOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_46

    :cond_42
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOn:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_46
    move-object v0, v2

    goto :goto_59

    .line 76
    :cond_48
    if-eqz v1, :cond_55

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_55

    .line 77
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_59

    .line 79
    :cond_55
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;->checkboxOff:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 81
    .end local v1  # "over":Z
    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 82
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 83
    return-void
.end method

.method public getImage()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->image:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object v0
.end method

.method public getImageCell()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->imageCell:Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    return-object v0
.end method

.method public bridge synthetic getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    move-result-object v0

    return-object v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V
    .registers 4
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;

    .line 53
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    if-eqz v0, :cond_d

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox$CheckBoxStyle;

    .line 55
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Button$ButtonStyle;)V

    .line 56
    return-void

    .line 53
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "style must be a CheckBoxStyle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

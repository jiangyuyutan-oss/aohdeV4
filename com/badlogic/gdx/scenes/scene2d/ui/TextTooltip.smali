.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;
.source "TextTooltip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip<",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 5
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 28
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->getInstance()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 6
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p3, "styleName"  # Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->getInstance()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-virtual {p2, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V
    .registers 4
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    .line 36
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->getInstance()Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .registers 5
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "manager"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;
    .param p3, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 40
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .registers 6
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "manager"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;
    .param p3, "skin"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p4, "styleName"  # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-virtual {p3, p4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V
    .registers 7
    .param p1, "text"  # Ljava/lang/String;
    .param p2, "manager"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;
    .param p3, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tooltip;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V

    .line 50
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 51
    .local v0, "label":Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 53
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 54
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 60
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V

    .line 61
    return-void
.end method


# virtual methods
.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V
    .registers 4
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    .line 64
    if-eqz p1, :cond_1e

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    iget v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->wrapWidth:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 68
    return-void

    .line 64
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "style cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

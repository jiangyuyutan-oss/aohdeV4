.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;
.super Ljava/lang/Object;
.source "TextTooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextTooltipStyle"
.end annotation


# instance fields
.field public background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public wrapWidth:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .registers 3
    .param p1, "label"  # Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .param p2, "background"  # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 83
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V
    .registers 4
    .param p1, "style"  # Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 88
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 89
    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->wrapWidth:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;->wrapWidth:F

    .line 90
    return-void
.end method

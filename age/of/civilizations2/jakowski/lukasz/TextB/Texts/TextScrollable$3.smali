.class Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;
.super Ljava/lang/Object;
.source "TextScrollable.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->updateTextPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    .line 169
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 6

    .line 172
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$300(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)J

    move-result-wide v0

    const-wide/16 v2, 0x23

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_67

    .line 173
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$400(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_42

    .line 174
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$206(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)I

    .line 176
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getWidthE()I

    move-result v0

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$200(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->getTextWidthU()I

    move-result v2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_5b

    .line 177
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$400(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$402(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;Z)Z

    goto :goto_5b

    .line 180
    :cond_42
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$204(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)I

    .line 182
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$200(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)I

    move-result v0

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    if-ne v0, v2, :cond_5b

    .line 183
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$400(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$402(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;Z)Z

    .line 187
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$302(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;J)J

    .line 189
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 192
    :cond_67
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;->access$200(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextScrollable;)I

    move-result v0

    return v0
.end method

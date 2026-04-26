.class Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;
.super Ljava/lang/Object;
.source "MapScroll.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/MapScroll$BackgroundAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/MapScroll;->updateEnableBackroundAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    .line 160
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBackgroundAnimation()V
    .registers 8

    .line 163
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->getActionMap()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 164
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c0

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNewGamePlayers()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 166
    const/4 v0, 0x0

    :try_start_1e
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v1

    if-gez v1, :cond_49

    .line 167
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$004(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I

    .line 169
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v2

    if-lt v1, v2, :cond_48

    .line 170
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$002(Lage/of/civilizations2/jakowski/lukasz/MapScroll;I)I
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_48} :catch_b9

    .line 173
    :cond_48
    return-void

    .line 178
    :cond_49
    nop

    .line 181
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$100(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x9c4

    sub-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gtz v5, :cond_c0

    .line 183
    :try_start_5b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->setScrollEvent(I)V

    .line 184
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$008(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I
    :try_end_7f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5b .. :try_end_7f} :catch_80

    .line 188
    goto :goto_a5

    .line 185
    :catch_80
    move-exception v1

    .line 186
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$002(Lage/of/civilizations2/jakowski/lukasz/MapScroll;I)I

    .line 187
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->setScrollEvent(I)V

    .line 190
    .end local v1  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_a5
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$000(Lage/of/civilizations2/jakowski/lukasz/MapScroll;)I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayersSize()I

    move-result v2

    if-lt v1, v2, :cond_c0

    .line 191
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$002(Lage/of/civilizations2/jakowski/lukasz/MapScroll;I)I

    goto :goto_c0

    .line 175
    :catch_b9
    move-exception v1

    .line 176
    .restart local v1  # "ex":Ljava/lang/IndexOutOfBoundsException;
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/MapScroll$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    invoke-static {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->access$002(Lage/of/civilizations2/jakowski/lukasz/MapScroll;I)I

    .line 177
    return-void

    .line 196
    .end local v1  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_c0
    :goto_c0
    return-void
.end method

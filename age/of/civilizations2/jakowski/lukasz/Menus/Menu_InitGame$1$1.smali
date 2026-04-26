.class Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1$1;
.super Ljava/lang/Object;
.source "Menu_InitGame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1;)V
    .registers 2
    .param p1, "this$1"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1;

    .line 258
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1$1;->this$1:Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 261
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1$1;->this$1:Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame$1;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;->access$000(Lage/of/civilizations2/jakowski/lukasz/Menus/Menu_InitGame;)V

    .line 262
    return-void
.end method

.class Lage/of/civilizations2/jakowski/lukasz/TextB/Text$4;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->updateTextPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Text;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Text;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    .line 139
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 142
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextPositionX:I

    return v0
.end method

.class Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$2;
.super Ljava/lang/Object;
.source "ButtonM.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->init(Ljava/lang/String;IIIIIZZZZLage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    .line 87
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 90
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->iTextPositionX:I

    return v0
.end method

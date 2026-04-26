.class Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$4;
.super Ljava/lang/Object;
.source "ButtonM.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;->buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
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

    .line 146
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "iTranslateY"  # I
    .param p4, "scrollableY"  # Z

    .line 148
    return-void
.end method

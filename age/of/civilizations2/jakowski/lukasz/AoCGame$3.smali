.class Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;
.super Lcom/badlogic/gdx/InputAdapter;
.source "AoCGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/AoCGame;->initInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    .line 947
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .registers 11
    .param p1, "keycode"  # I

    .line 951
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_SKMenu()Z

    move-result v1

    const/16 v2, 0x14

    const/16 v3, 0x13

    const/16 v4, 0x16

    const/16 v5, 0x15

    if-eqz v1, :cond_1d

    .line 952
    if-ne p1, v5, :cond_14

    .line 953
    return v0

    .line 956
    :cond_14
    if-ne p1, v4, :cond_17

    .line 957
    return v0

    .line 960
    :cond_17
    if-ne p1, v3, :cond_1a

    .line 961
    return v0

    .line 964
    :cond_1a
    if-ne p1, v2, :cond_1d

    .line 965
    return v0

    .line 969
    :cond_1d
    const/16 v1, 0x81

    if-eq p1, v1, :cond_25

    const/16 v1, 0x82

    if-ne p1, v1, :cond_27

    .line 970
    :cond_25
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->CTRL_CLICKED:Z

    .line 973
    :cond_27
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getVisibleM()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 974
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;

    invoke-virtual {v1, p1}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->keyDown(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 975
    return v0

    .line 978
    :cond_3c
    const/high16 v1, 0x41700000  # 15.0f

    const/4 v6, 0x0

    if-ne p1, v5, :cond_59

    .line 979
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v5, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$002(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 980
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$102(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 982
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$202(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J

    .line 983
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v5, v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$302(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F

    .line 985
    :cond_59
    if-ne p1, v4, :cond_73

    .line 986
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$102(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 987
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$002(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 989
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$202(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J

    .line 990
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$302(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F

    .line 993
    :cond_73
    if-ne p1, v3, :cond_8d

    .line 994
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$402(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 995
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v3, v6}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$502(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 997
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$602(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J

    .line 998
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$702(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F

    .line 1000
    :cond_8d
    if-ne p1, v2, :cond_a7

    .line 1001
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$502(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1002
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v2, v6}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$402(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1004
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$602(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J

    .line 1005
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v2, v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$702(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a7} :catch_a8

    .line 1010
    :cond_a7
    goto :goto_ac

    .line 1008
    :catch_a8
    move-exception v1

    .line 1009
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1012
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_ac
    return v0
.end method

.method public keyTyped(C)Z
    .registers 5
    .param p1, "character"  # C

    .line 1591
    :try_start_0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getVisibleM()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1592
    if-lez p1, :cond_53

    .line 1593
    const/16 v0, 0x12

    if-eq p1, v0, :cond_45

    const/16 v0, 0x8

    if-ne p1, v0, :cond_17

    goto :goto_45

    .line 1597
    :cond_17
    const/16 v0, 0xd

    if-eq p1, v0, :cond_53

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_53

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_53

    .line 1600
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    .line 1601
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->onMenuPressed()V

    goto :goto_53

    .line 1594
    :cond_45
    :goto_45
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;->action()V

    .line 1595
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v0

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Menu;->onMenuPressed()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    .line 1607
    :cond_53
    :goto_53
    goto :goto_58

    .line 1605
    :catch_54
    move-exception v0

    .line 1606
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1610
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_58
    :try_start_58
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->PERC_VOLUME_KEYBOARD:F

    invoke-virtual {v0, v1, v2}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(IF)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_62

    .line 1613
    goto :goto_66

    .line 1611
    :catch_62
    move-exception v0

    .line 1612
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1615
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_66
    const/4 v0, 0x0

    return v0
.end method

.method public keyUp(I)Z
    .registers 18
    .param p1, "keycode"  # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1018
    const/4 v3, 0x0

    :try_start_5
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIn_SKMenu()Z

    move-result v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_98b

    const/16 v5, 0x14

    const/16 v6, 0x13

    const/16 v7, 0x16

    const/16 v8, 0x15

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eqz v4, :cond_3b

    .line 1020
    if-ne v2, v8, :cond_22

    .line 1021
    :try_start_19
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    invoke-virtual {v4, v9, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->setDirection(II)V

    .line 1022
    return v10

    .line 1039
    :catch_1f
    move-exception v0

    move-object v3, v0

    goto :goto_3a

    .line 1025
    :cond_22
    if-ne v2, v7, :cond_2a

    .line 1026
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    invoke-virtual {v4, v10, v3}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->setDirection(II)V

    .line 1027
    return v10

    .line 1030
    :cond_2a
    if-ne v2, v6, :cond_32

    .line 1031
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    invoke-virtual {v4, v3, v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->setDirection(II)V

    .line 1032
    return v10

    .line 1035
    :cond_32
    if-ne v2, v5, :cond_3b

    .line 1036
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK;->snakeGame:Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;

    invoke-virtual {v4, v3, v10}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_SK$SnakeGame;->setDirection(II)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_39} :catch_1f

    .line 1037
    return v10

    .line 1040
    .local v3, "ex":Ljava/lang/Exception;
    :goto_3a
    return v10

    .line 1044
    .end local v3  # "ex":Ljava/lang/Exception;
    :cond_3b
    :try_start_3b
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->CTRL_CLICKED:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3d} :catch_98b

    if-eqz v4, :cond_f4

    .line 1046
    :try_start_3f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getVisibleM()Z

    move-result v4
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_49} :catch_ef

    if-eqz v4, :cond_ee

    .line 1047
    const/16 v4, 0x32

    const-string v11, ": "

    if-ne v2, v4, :cond_82

    .line 1048
    :try_start_51
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v4

    invoke-interface {v4}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    .line 1049
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v14, "Paste"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 1050
    return v10

    .line 1052
    :cond_82
    const/16 v4, 0x1f

    if-ne v2, v4, :cond_b6

    .line 1053
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v4

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-interface {v4, v12}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    .line 1054
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v14, "Copy"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 1055
    return v10

    .line 1057
    :cond_b6
    const/16 v4, 0x34

    if-ne v2, v4, :cond_ee

    .line 1058
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v14, "Cut"

    invoke-virtual {v13, v14}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 1059
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v4

    sget-object v11, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-interface {v4, v11}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    .line 1060
    const-string v4, ""

    sput-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_ed} :catch_ef

    .line 1061
    return v10

    .line 1066
    :cond_ee
    goto :goto_f4

    .line 1064
    :catch_ef
    move-exception v0

    move-object v4, v0

    .line 1065
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_f1
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1069
    .end local v4  # "ex":Ljava/lang/Exception;
    :cond_f4
    :goto_f4
    const/16 v4, 0x81

    if-eq v2, v4, :cond_fc

    const/16 v4, 0x82

    if-ne v2, v4, :cond_fe

    .line 1070
    :cond_fc
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->CTRL_CLICKED:Z

    .line 1073
    :cond_fe
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getVisibleM()Z

    move-result v4

    const/16 v11, 0x42

    if-nez v4, :cond_96f

    .line 1074
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;

    invoke-virtual {v4, v2}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->keyUp(I)Z

    move-result v4

    if-eqz v4, :cond_115

    .line 1075
    return v10

    .line 1078
    :cond_115
    if-ne v2, v8, :cond_11c

    .line 1079
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$002(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1081
    :cond_11c
    if-ne v2, v7, :cond_123

    .line 1082
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$102(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1084
    :cond_123
    if-ne v2, v6, :cond_12a

    .line 1085
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$402(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1087
    :cond_12a
    if-ne v2, v5, :cond_131

    .line 1088
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$502(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1091
    :cond_131
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v4

    if-eqz v4, :cond_98a

    .line 1092
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getVisibleM()Z

    move-result v4

    const/16 v12, 0x43

    const/16 v13, 0x6f

    const/16 v14, 0xa0

    const/16 v15, 0x3e

    const/4 v8, 0x2

    if-eqz v4, :cond_1a7

    .line 1093
    if-eq v2, v11, :cond_17f

    if-eq v2, v14, :cond_17f

    if-ne v2, v15, :cond_153

    goto :goto_17f

    .line 1099
    :cond_153
    if-eq v2, v13, :cond_157

    if-ne v2, v12, :cond_98a

    .line 1100
    :cond_157
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V

    .line 1101
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V

    .line 1102
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->dialog_False()V

    .line 1103
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->onBackPressed()V

    goto/16 :goto_98a

    .line 1094
    :cond_17f
    :goto_17f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V

    .line 1095
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setClickable(Z)V

    .line 1096
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->dialog_True()V

    .line 1097
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getDialogMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->onBackPressed()V

    goto/16 :goto_98a

    .line 1106
    :cond_1a7
    const/16 v4, 0x8d

    if-ne v2, v4, :cond_1b2

    .line 1107
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->loadNextMusic()V

    goto/16 :goto_98a

    .line 1109
    :cond_1b2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v4
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_1b8} :catch_98b

    const/16 v6, 0x51

    const/16 v7, 0x9c

    const/16 v5, 0x45

    const/16 v12, 0x3d

    if-eqz v4, :cond_89d

    .line 1110
    const/4 v4, 0x3

    if-ne v2, v4, :cond_269

    .line 1112
    :try_start_1c5
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setActiveProvID(I)V

    .line 1113
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpC()Lage/of/civilizations2/jakowski/lukasz/MapCoords;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MapCoords;->centerToProvID(I)V

    .line 1115
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DIPLOMACY_MODE:I

    if-ne v4, v5, :cond_203

    .line 1116
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->disableDrawCivilizationRegions_Active()V

    .line 1117
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->enableDrawCivilizationRegions_ActiveProvince()V

    .line 1120
    :cond_203
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v4

    if-eqz v4, :cond_210

    .line 1121
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction(Z)V

    .line 1124
    :cond_210
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_267

    .line 1125
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v7, v8}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v7

    invoke-virtual {v6, v7}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCapitalProvID()I

    move-result v6

    invoke-virtual {v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Province;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_TEXT_NUM_OF_PROVINCES:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5, v6}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_25d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c5 .. :try_end_25d} :catch_25e
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_25d} :catch_98b

    goto :goto_267

    .line 1127
    :catch_25e
    move-exception v0

    move-object v4, v0

    .line 1128
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_260
    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v5, :cond_267

    .line 1129
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1131
    .end local v4  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_267
    :goto_267
    goto/16 :goto_98a

    .line 1134
    :cond_269
    if-ne v2, v13, :cond_2eb

    .line 1135
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v4

    if-eqz v4, :cond_278

    .line 1136
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->clickFlagAction()V

    goto/16 :goto_98a

    .line 1138
    :cond_278
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->regroupArmyMode:Z

    if-eqz v4, :cond_288

    .line 1139
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->resetRegroupArmy_Data()V

    .line 1140
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    goto/16 :goto_98a

    .line 1142
    :cond_288
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    if-nez v4, :cond_2df

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->chosenProvinceID:I

    if-ltz v4, :cond_291

    goto :goto_2df

    .line 1146
    :cond_291
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v4

    if-eqz v4, :cond_29e

    .line 1147
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Options/Menu_InGame_Options;->clickBack()V

    goto/16 :goto_98a

    .line 1149
    :cond_29e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v4

    if-eqz v4, :cond_2b2

    .line 1150
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProviRecruit(Z)V

    .line 1151
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    goto/16 :goto_98a

    .line 1153
    :cond_2b2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v4

    if-eqz v4, :cond_2c6

    .line 1154
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceRecruitInstantly(Z)V

    .line 1155
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    goto/16 :goto_98a

    .line 1157
    :cond_2c6
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v4

    if-eqz v4, :cond_2da

    .line 1158
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceDisband(Z)V

    .line 1159
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    goto/16 :goto_98a

    .line 1162
    :cond_2da
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->clickOptions()V

    goto/16 :goto_98a

    .line 1143
    :cond_2df
    :goto_2df
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->resetChooseProvinceData()V

    .line 1144
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    goto/16 :goto_98a

    .line 1177
    :cond_2eb
    if-eq v2, v5, :cond_898

    if-ne v2, v7, :cond_2f1

    goto/16 :goto_898

    .line 1180
    :cond_2f1
    if-eq v2, v6, :cond_893

    const/16 v5, 0x9d

    if-ne v2, v5, :cond_2f9

    goto/16 :goto_893

    .line 1183
    :cond_2f9
    if-eq v2, v11, :cond_811

    if-ne v2, v14, :cond_2ff

    goto/16 :goto_811

    .line 1210
    :cond_2ff
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v5

    if-nez v5, :cond_98a

    .line 1211
    if-ne v2, v15, :cond_3a4

    .line 1212
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v5

    if-eqz v5, :cond_322

    .line 1213
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_ConfirmMove()V

    .line 1214
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playMoveArmy()I

    move-result v5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1215
    return v10

    .line 1217
    :cond_322
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v5

    if-eqz v5, :cond_337

    .line 1218
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Confrm()V

    .line 1219
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK2:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1220
    return v10

    .line 1222
    :cond_337
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v5

    if-eqz v5, :cond_34c

    .line 1223
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Confrim()V

    .line 1224
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_RECRUIT:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1225
    return v10

    .line 1227
    :cond_34c
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v5

    if-eqz v5, :cond_361

    .line 1228
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Confrim()V

    .line 1229
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_RECRUIT:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1230
    return v10

    .line 1232
    :cond_361
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v5

    if-eqz v5, :cond_376

    .line 1233
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Confrim()V

    .line 1234
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(I)V

    .line 1235
    return v10

    .line 1238
    :cond_376
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v5, v6, :cond_385

    .line 1239
    sput-boolean v10, Lage/of/civilizations2/jakowski/lukasz/RTS;->PAUSE:Z

    .line 1240
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->resetTime()V
    :try_end_385
    .catch Ljava/lang/Exception; {:try_start_260 .. :try_end_385} :catch_98b

    .line 1244
    :cond_385
    :try_start_385
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameProvInfo()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v5

    invoke-virtual {v5, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getIsClickable()Z

    move-result v5

    if-eqz v5, :cond_3a4

    .line 1245
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Info/Menu_InGame_ProvInfo;->clickEndTurn()V
    :try_end_398
    .catch Ljava/lang/NullPointerException; {:try_start_385 .. :try_end_398} :catch_39f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_385 .. :try_end_398} :catch_399
    .catch Ljava/lang/Exception; {:try_start_385 .. :try_end_398} :catch_98b

    goto :goto_3a4

    .line 1249
    :catch_399
    move-exception v0

    move-object v5, v0

    .line 1250
    .local v5, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_39b
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_3a4

    .line 1247
    .end local v5  # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_39f
    move-exception v0

    move-object v5, v0

    .line 1248
    .local v5, "ex":Ljava/lang/NullPointerException;
    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1254
    .end local v5  # "ex":Ljava/lang/NullPointerException;
    :cond_3a4
    :goto_3a4
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v5, v6, :cond_98a

    .line 1255
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v5

    const/16 v6, 0x8

    const/16 v7, 0x9

    if-nez v5, :cond_3da

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v5

    if-nez v5, :cond_3da

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v5

    if-nez v5, :cond_3da

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v5

    if-nez v5, :cond_3da

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v5

    if-eqz v5, :cond_4e9

    .line 1256
    :cond_3da
    const/4 v5, 0x7

    if-eq v2, v5, :cond_46c

    const/16 v5, 0x90

    if-ne v2, v5, :cond_3e3

    goto/16 :goto_46c

    .line 1258
    :cond_3e3
    if-eq v2, v6, :cond_466

    const/16 v5, 0x91

    if-ne v2, v5, :cond_3eb

    goto/16 :goto_466

    .line 1260
    :cond_3eb
    if-eq v2, v7, :cond_460

    const/16 v5, 0x92

    if-ne v2, v5, :cond_3f3

    goto/16 :goto_460

    .line 1262
    :cond_3f3
    const/16 v5, 0xa

    if-eq v2, v5, :cond_45a

    const/16 v5, 0x93

    if-ne v2, v5, :cond_3fd

    goto/16 :goto_45a

    .line 1264
    :cond_3fd
    const/16 v4, 0xb

    if-eq v2, v4, :cond_453

    const/16 v4, 0x94

    if-ne v2, v4, :cond_406

    goto :goto_453

    .line 1266
    :cond_406
    const/16 v4, 0xc

    if-eq v2, v4, :cond_44c

    const/16 v4, 0x95

    if-ne v2, v4, :cond_40f

    goto :goto_44c

    .line 1268
    :cond_40f
    const/16 v4, 0xd

    if-eq v2, v4, :cond_445

    const/16 v4, 0x96

    if-ne v2, v4, :cond_418

    goto :goto_445

    .line 1270
    :cond_418
    const/16 v4, 0xe

    if-eq v2, v4, :cond_43e

    const/16 v4, 0x97

    if-ne v2, v4, :cond_421

    goto :goto_43e

    .line 1272
    :cond_421
    const/16 v4, 0xf

    if-eq v2, v4, :cond_438

    const/16 v4, 0x98

    if-ne v2, v4, :cond_42a

    goto :goto_438

    .line 1274
    :cond_42a
    const/16 v4, 0x10

    if-eq v2, v4, :cond_432

    const/16 v4, 0x99

    if-ne v2, v4, :cond_471

    .line 1275
    :cond_432
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-virtual {v4, v7}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto :goto_471

    .line 1273
    :cond_438
    :goto_438
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-virtual {v4, v6}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto :goto_471

    .line 1271
    :cond_43e
    :goto_43e
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto :goto_471

    .line 1269
    :cond_445
    :goto_445
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto :goto_471

    .line 1267
    :cond_44c
    :goto_44c
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto :goto_471

    .line 1265
    :cond_453
    :goto_453
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto :goto_471

    .line 1263
    :cond_45a
    :goto_45a
    iget-object v5, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-virtual {v5, v4}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto :goto_471

    .line 1261
    :cond_460
    :goto_460
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-virtual {v4, v8}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto :goto_471

    .line 1259
    :cond_466
    :goto_466
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    goto :goto_471

    .line 1257
    :cond_46c
    :goto_46c
    iget-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->typeNumber(I)V

    .line 1278
    :cond_471
    :goto_471
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v4

    if-eqz v4, :cond_489

    .line 1279
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Slider()Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 1281
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_Move()V

    .line 1284
    :cond_489
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v4

    if-eqz v4, :cond_4a1

    .line 1285
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvRecruitSlider()Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 1287
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_Recruit()V

    .line 1290
    :cond_4a1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v4

    if-eqz v4, :cond_4b9

    .line 1291
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Slider()Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 1293
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_RecruitInstantly()V

    .line 1296
    :cond_4b9
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v4

    if-eqz v4, :cond_4d1

    .line 1297
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_RegroupArmy_Slider()Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 1299
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_Regroup()V

    .line 1302
    :cond_4d1
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v4

    if-eqz v4, :cond_4e9

    .line 1303
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Slider()Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->TYPE_NUMBER:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCurr(I)V

    .line 1305
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->updateInGame_ActionInfo_Disband()V

    .line 1309
    :cond_4e9
    const/16 v4, 0x4d

    if-ne v2, v4, :cond_4fd

    .line 1310
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction_Console()Z

    move-result v5

    if-nez v5, :cond_4f9

    const/4 v5, 0x1

    goto :goto_4fa

    :cond_4f9
    const/4 v5, 0x0

    :goto_4fa
    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_FlagAction_Console(Z)V

    .line 1312
    :cond_4fd
    const/16 v4, 0x83

    if-ne v2, v4, :cond_506

    .line 1313
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->clickFlagAction()V

    goto/16 :goto_732

    .line 1315
    :cond_506
    const/16 v4, 0x84

    if-eq v2, v4, :cond_717

    if-ne v2, v12, :cond_50e

    goto/16 :goto_717

    .line 1321
    :cond_50e
    const/16 v4, 0x85

    if-ne v2, v4, :cond_51b

    .line 1322
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DIPLOMACY_MODE:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->setActiveMapModeID(I)V

    goto/16 :goto_732

    .line 1324
    :cond_51b
    const/16 v4, 0x86

    if-ne v2, v4, :cond_5e1

    .line 1325
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getVisibleM()Z

    move-result v5

    if-nez v5, :cond_52f

    const/4 v5, 0x1

    goto :goto_530

    :cond_52f
    const/4 v5, 0x0

    :goto_530
    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_MapModes(Z)V

    .line 1327
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v4

    if-gez v4, :cond_732

    .line 1328
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v5

    invoke-virtual {v5, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v5

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v9

    invoke-virtual {v9, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v9

    div-int/2addr v9, v8

    add-int/2addr v5, v9

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v9

    invoke-virtual {v9}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v9

    div-int/2addr v9, v8

    sub-int/2addr v5, v9

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setPosX_Force(I)V

    .line 1329
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->getHeightT()I

    move-result v5

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v8

    add-int/2addr v5, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameMenu()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v8

    invoke-virtual {v8, v7}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v8

    add-int/2addr v5, v8

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v5, v8

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setPosY(I)V

    .line 1331
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getPosX()I

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v5, v8

    if-le v4, v5, :cond_732

    .line 1332
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v5, v8

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_MapModes()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v8

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Menu;->getWidthM()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setPosX_Force(I)V

    goto/16 :goto_732

    .line 1336
    :cond_5e1
    const/16 v4, 0x87

    if-ne v2, v4, :cond_611

    .line 1337
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->gvInGame:Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;

    iget-boolean v4, v4, Lage/of/civilizations2/jakowski/lukasz/GameValues/GV_InGame;->USE_IN_GAME_OLD_STATS_MENU:Z

    if-eqz v4, :cond_5ff

    .line 1338
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_Menu_InGame_Outliner()Z

    move-result v4

    if-eqz v4, :cond_5fa

    .line 1339
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_Menu_InGame_Outliner(Z)V

    goto/16 :goto_732

    .line 1341
    :cond_5fa
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->clickStats()V

    goto/16 :goto_732

    .line 1345
    :cond_5ff
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Stats()Z

    move-result v5

    if-nez v5, :cond_60b

    const/4 v5, 0x1

    goto :goto_60c

    :cond_60b
    const/4 v5, 0x0

    :goto_60c
    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_Stats(Z)V

    goto/16 :goto_732

    .line 1348
    :cond_611
    const/16 v4, 0x88

    if-ne v2, v4, :cond_62b

    .line 1349
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Wars()Z

    move-result v4

    if-eqz v4, :cond_624

    .line 1350
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_Wars(Z)V

    goto/16 :goto_732

    .line 1353
    :cond_624
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Wars()V

    goto/16 :goto_732

    .line 1356
    :cond_62b
    const/16 v4, 0x89

    if-ne v2, v4, :cond_645

    .line 1357
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_MilitaryAlliances()Z

    move-result v4

    if-eqz v4, :cond_63e

    .line 1358
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_MilitaryAlliances(Z)V

    goto/16 :goto_732

    .line 1361
    :cond_63e
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_MilitaryAlliances()V

    goto/16 :goto_732

    .line 1364
    :cond_645
    const/16 v4, 0x8a

    if-ne v2, v4, :cond_65f

    .line 1365
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_History()Z

    move-result v4

    if-eqz v4, :cond_658

    .line 1366
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_History(Z)V

    goto/16 :goto_732

    .line 1369
    :cond_658
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_History()V

    goto/16 :goto_732

    .line 1372
    :cond_65f
    const/16 v4, 0x8b

    if-ne v2, v4, :cond_679

    .line 1373
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Rank()Z

    move-result v4

    if-eqz v4, :cond_672

    .line 1374
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_Rank(Z)V

    goto/16 :goto_732

    .line 1377
    :cond_672
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_Rank()V

    goto/16 :goto_732

    .line 1380
    :cond_679
    const/16 v4, 0x8e

    if-ne v2, v4, :cond_68f

    .line 1381
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisibleInGame_Playlist()Z

    move-result v5

    if-nez v5, :cond_689

    const/4 v5, 0x1

    goto :goto_68a

    :cond_689
    const/4 v5, 0x0

    :goto_68a
    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisibleInGame_Playlist(Z)V

    goto/16 :goto_732

    .line 1384
    :cond_68f
    if-ne v2, v6, :cond_696

    .line 1385
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_Army;->acMass()V

    goto/16 :goto_732

    .line 1387
    :cond_696
    if-ne v2, v7, :cond_69d

    .line 1388
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_Army;->mvFR()V

    goto/16 :goto_732

    .line 1390
    :cond_69d
    const/16 v4, 0xa

    if-ne v2, v4, :cond_6a6

    .line 1391
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Z_Rest2/Menu_InGame_View_Army;->acRegroup()V

    goto/16 :goto_732

    .line 1393
    :cond_6a6
    const/16 v4, 0xb

    if-ne v2, v4, :cond_6b1

    .line 1394
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->rebuildInGame_CancelMoveArmies()V

    goto/16 :goto_732

    .line 1396
    :cond_6b1
    const/16 v4, 0x2d

    if-ne v2, v4, :cond_6c4

    .line 1397
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    if-eqz v4, :cond_732

    .line 1398
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->resetChooseProvinceData()V

    .line 1399
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    .line 1400
    return v10

    .line 1403
    :cond_6c4
    const/16 v4, 0x33

    if-ne v2, v4, :cond_6db

    .line 1404
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v4

    if-eqz v4, :cond_732

    .line 1405
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProviRecruit(Z)V

    .line 1406
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    .line 1407
    return v10

    .line 1410
    :cond_6db
    const/16 v4, 0x21

    if-ne v2, v4, :cond_6ed

    .line 1411
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvincemMore_Visible()Z

    move-result v4

    if-eqz v4, :cond_732

    .line 1412
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceMore(ZZ)V

    .line 1413
    return v10

    .line 1416
    :cond_6ed
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_704

    .line 1417
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v4

    if-eqz v4, :cond_732

    .line 1418
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_ProvinceDisband(Z)V

    .line 1419
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    .line 1420
    return v10

    .line 1423
    :cond_704
    const/16 v4, 0x30

    if-ne v2, v4, :cond_732

    .line 1424
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->regroupArmyMode:Z

    if-eqz v4, :cond_732

    .line 1425
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->resetRegroupArmy_Data()V

    .line 1426
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    .line 1427
    return v10

    .line 1316
    :cond_717
    :goto_717
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v4

    if-eqz v4, :cond_722

    .line 1317
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/ZRest/Menu_InGame_2;->clickFlagAction()V

    .line 1319
    :cond_722
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_CivInfo()Z

    move-result v5

    if-nez v5, :cond_72e

    const/4 v5, 0x1

    goto :goto_72f

    :cond_72e
    const/4 v5, 0x0

    :goto_72f
    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setVisible_InGame_CivInfo(Z)V

    .line 1431
    :cond_732
    :goto_732
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    const/16 v8, 0x35

    if-ne v4, v5, :cond_74b

    .line 1432
    if-ne v2, v8, :cond_744

    .line 1433
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->clickOffensive()V

    .line 1434
    return v10

    .line 1436
    :cond_744
    const/16 v4, 0x31

    if-ne v2, v4, :cond_74b

    .line 1437
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->clickCancelMove()V

    .line 1441
    :cond_74b
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_ProvinceAction()Z

    move-result v4

    if-eqz v4, :cond_7e3

    .line 1442
    const/16 v4, 0x23

    if-ne v2, v4, :cond_75d

    .line 1443
    const/4 v4, 0x0

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->recruit(F)V

    goto/16 :goto_98a

    .line 1445
    :cond_75d
    const/16 v4, 0x2d

    if-ne v2, v4, :cond_780

    .line 1446
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v4, v5, :cond_98a

    .line 1447
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->chooseProvinceMode:Z

    if-nez v4, :cond_774

    .line 1448
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->clickMove()V

    goto/16 :goto_98a

    .line 1451
    :cond_774
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->resetChooseProvinceData()V

    .line 1452
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->checkProvinceActionMenu()V

    goto/16 :goto_98a

    .line 1456
    :cond_780
    const/16 v4, 0x33

    if-ne v2, v4, :cond_78f

    .line 1457
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->canRecruit()Z

    move-result v4

    if-eqz v4, :cond_98a

    .line 1458
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->clickRecruit()V

    goto/16 :goto_98a

    .line 1461
    :cond_78f
    const/16 v4, 0x21

    if-ne v2, v4, :cond_79e

    .line 1462
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->canRecruit()Z

    move-result v4

    if-eqz v4, :cond_98a

    .line 1463
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->clickBuild()V

    goto/16 :goto_98a

    .line 1466
    :cond_79e
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_7a7

    .line 1467
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->clickDisband()V

    goto/16 :goto_98a

    .line 1469
    :cond_7a7
    const/16 v4, 0x30

    if-ne v2, v4, :cond_7b0

    .line 1470
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->clickMoveTo()V

    goto/16 :goto_98a

    .line 1472
    :cond_7b0
    if-ne v2, v8, :cond_7b7

    .line 1473
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->clickOffensive()V

    goto/16 :goto_98a

    .line 1476
    :cond_7b7
    const/16 v4, 0x1d

    if-ne v2, v4, :cond_7c2

    .line 1477
    const/high16 v4, 0x3e800000  # 0.25f

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->recruit(F)V

    goto/16 :goto_98a

    .line 1479
    :cond_7c2
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_7cd

    .line 1480
    const/high16 v4, 0x3f000000  # 0.5f

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->recruit(F)V

    goto/16 :goto_98a

    .line 1482
    :cond_7cd
    const/16 v4, 0x20

    if-ne v2, v4, :cond_7d8

    .line 1483
    const/high16 v4, 0x3f400000  # 0.75f

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->recruit(F)V

    goto/16 :goto_98a

    .line 1485
    :cond_7d8
    const/16 v4, 0x22

    if-ne v2, v4, :cond_98a

    .line 1486
    const/high16 v4, 0x3f800000  # 1.0f

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->recruit(F)V

    goto/16 :goto_98a

    .line 1489
    :cond_7e3
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_ProvinceActionForeign()Z

    move-result v4

    if-eqz v4, :cond_802

    .line 1490
    if-ne v2, v6, :cond_7f2

    .line 1491
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvinceActionForeign;->investForeign()V

    goto/16 :goto_98a

    .line 1493
    :cond_7f2
    if-ne v2, v7, :cond_7f9

    .line 1494
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvinceActionForeign;->buildForeign()V

    goto/16 :goto_98a

    .line 1496
    :cond_7f9
    const/16 v4, 0x31

    if-ne v2, v4, :cond_98a

    .line 1497
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvinceActionForeign;->useNuke()V

    goto/16 :goto_98a

    .line 1500
    :cond_802
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_98a

    .line 1501
    if-ne v2, v8, :cond_98a

    .line 1502
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Action/Menu_InGameProvAction;->clickOffensive()V

    goto/16 :goto_98a

    .line 1184
    :cond_811
    :goto_811
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView_Options()Z

    move-result v4

    if-nez v4, :cond_88e

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v4, v5, :cond_88e

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v4

    if-nez v4, :cond_84b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v4

    if-nez v4, :cond_84b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v4

    if-nez v4, :cond_84b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v4

    if-nez v4, :cond_84b

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v4

    if-eqz v4, :cond_88e

    .line 1185
    :cond_84b
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Visible()Z

    move-result v4

    if-eqz v4, :cond_858

    .line 1186
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceMoveUnits_Confrim()V

    .line 1189
    :cond_858
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Visible()Z

    move-result v4

    if-eqz v4, :cond_865

    .line 1190
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruit_Confrim()V

    .line 1193
    :cond_865
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Visible()Z

    move-result v4

    if-eqz v4, :cond_872

    .line 1194
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRecruitInstantly_Confrim()V

    .line 1197
    :cond_872
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_Visible()Z

    move-result v4

    if-eqz v4, :cond_87f

    .line 1198
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceRegroupArmy_ConfirmMove()V

    .line 1201
    :cond_87f
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Visible()Z

    move-result v4

    if-eqz v4, :cond_98a

    .line 1202
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_ProvinceDisband_Confrm()V

    goto/16 :goto_98a

    .line 1206
    :cond_88e
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/RTS;->pauseUnpause()V

    goto/16 :goto_98a

    .line 1181
    :cond_893
    :goto_893
    invoke-static {v10}, Lage/of/civilizations2/jakowski/lukasz/RTS;->updateSpeed(I)V

    goto/16 :goto_98a

    .line 1178
    :cond_898
    :goto_898
    invoke-static {v9}, Lage/of/civilizations2/jakowski/lukasz/RTS;->updateSpeed(I)V

    goto/16 :goto_98a

    .line 1510
    :cond_89d
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInNextPlayerTurn()Z

    move-result v4

    if-eqz v4, :cond_8ac

    .line 1511
    if-ne v2, v15, :cond_98a

    .line 1512
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Turn/Menu_NextPlayerTurn;->clickBack()V

    goto/16 :goto_98a

    .line 1516
    :cond_8ac
    const/16 v4, 0x43

    if-ne v2, v4, :cond_8b7

    .line 1517
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->onBackPressed()V

    goto/16 :goto_98a

    .line 1520
    :cond_8b7
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_Timeline()Z

    move-result v4

    if-nez v4, :cond_94d

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInVictory()Z

    move-result v4

    if-eqz v4, :cond_8c9

    goto/16 :goto_94d

    .line 1532
    :cond_8c9
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGame_CreateAVassal()Z

    move-result v4

    if-eqz v4, :cond_8da

    .line 1533
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/View;->eINGAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    goto/16 :goto_98a

    .line 1536
    :cond_8da
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInCreateNewGame()Z

    move-result v4

    if-eqz v4, :cond_8f2

    .line 1537
    const/16 v4, 0x83

    if-ne v2, v4, :cond_8eb

    .line 1538
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Menu_CreateNewGame;->clickOptions()V

    goto/16 :goto_98a

    .line 1543
    :cond_8eb
    if-ne v2, v12, :cond_98a

    .line 1544
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Top/Menu_CreateNewGame_Top;->clickChooseScenario()V

    goto/16 :goto_98a

    .line 1548
    :cond_8f2
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInChooseScenario()Z

    move-result v4

    if-eqz v4, :cond_98a

    .line 1549
    if-eq v2, v11, :cond_949

    if-ne v2, v15, :cond_8ff

    goto :goto_949

    .line 1552
    :cond_8ff
    if-ne v2, v12, :cond_90a

    .line 1553
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/View;->eCREATE_NEW_GAME:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    goto/16 :goto_98a

    .line 1555
    :cond_90a
    const/16 v4, 0x14

    if-eq v2, v4, :cond_932

    const/16 v4, 0x16

    if-ne v2, v4, :cond_913

    goto :goto_932

    .line 1562
    :cond_913
    const/16 v4, 0x13

    if-eq v2, v4, :cond_91b

    const/16 v4, 0x15

    if-ne v2, v4, :cond_98a

    .line 1563
    :cond_91b
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    sub-int/2addr v4, v10

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    .line 1564
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    if-gez v4, :cond_92e

    .line 1565
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    sub-int/2addr v4, v10

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    .line 1567
    :cond_92e
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->loadPreview()V

    goto :goto_98a

    .line 1556
    :cond_932
    :goto_932
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    add-int/2addr v4, v10

    sput v4, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    .line 1557
    sget v4, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getGameScenars()Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Game_Scenarios;->SCENARIOS_SIZE:I

    sub-int/2addr v5, v10

    if-lt v4, v5, :cond_945

    .line 1558
    sput v3, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->iPreviewScenarioID:I

    .line 1560
    :cond_945
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->loadPreview()V

    goto :goto_98a

    .line 1550
    :cond_949
    :goto_949
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/NewGame/Choose/Menu_ChooseScenario_Title;->clickLoadScenario()V

    goto :goto_98a

    .line 1521
    :cond_94d
    :goto_94d
    if-eq v2, v5, :cond_969

    if-ne v2, v7, :cond_952

    goto :goto_969

    .line 1524
    :cond_952
    if-eq v2, v6, :cond_963

    const/16 v4, 0x9d

    if-ne v2, v4, :cond_959

    goto :goto_963

    .line 1527
    :cond_959
    if-eq v2, v11, :cond_95d

    if-ne v2, v14, :cond_98a

    .line 1528
    :cond_95d
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->pauseUnpause()V

    goto :goto_98a

    .line 1525
    :cond_963
    :goto_963
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    invoke-virtual {v4, v10}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->updateSpeed(I)V

    goto :goto_98a

    .line 1522
    :cond_969
    :goto_969
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->timelapseManager:Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;

    invoke-virtual {v4, v9}, Lage/of/civilizations2/jakowski/lukasz/Timelapse/TimelapseManager;->updateSpeed(I)V

    goto :goto_98a

    .line 1573
    :cond_96f
    if-ne v2, v11, :cond_98a

    .line 1574
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    invoke-interface {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;->action()V

    .line 1575
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Menu;->onMenuPressed()V

    .line 1577
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getKeyboard()Lage/of/civilizations2/jakowski/lukasz/Menu;

    move-result-object v4

    invoke-virtual {v4, v3}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 1578
    sput v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I
    :try_end_98a
    .catch Ljava/lang/Exception; {:try_start_39b .. :try_end_98a} :catch_98b

    .line 1583
    :cond_98a
    :goto_98a
    goto :goto_990

    .line 1581
    :catch_98b
    move-exception v0

    move-object v4, v0

    .line 1582
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1585
    .end local v4  # "ex":Ljava/lang/Exception;
    :goto_990
    return v3
.end method

.method public mouseMoved(II)Z
    .registers 9
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I

    .line 1657
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->setMousePosXY(II)V

    .line 1659
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 1660
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-boolean v1, v1, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->EDGE_SCROLLING:Z

    if-eqz v1, :cond_c1

    .line 1661
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    const/high16 v2, 0x41700000  # 15.0f

    const/4 v3, 0x0

    if-ge p1, v1, :cond_38

    .line 1662
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$000(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 1663
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$002(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1664
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$102(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1666
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$202(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J

    .line 1667
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$302(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F

    goto :goto_3d

    .line 1671
    :cond_38
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$002(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1674
    :cond_3d
    :goto_3d
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v4

    if-le p1, v1, :cond_65

    .line 1675
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$100(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1676
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$102(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1677
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$002(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1679
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$202(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J

    .line 1680
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$302(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F

    goto :goto_6a

    .line 1684
    :cond_65
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$102(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1687
    :cond_6a
    :goto_6a
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    if-ge p2, v1, :cond_8f

    .line 1688
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$400(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 1689
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$402(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1690
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$502(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1692
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$602(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J

    .line 1693
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$702(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F

    goto :goto_94

    .line 1697
    :cond_8f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$402(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1700
    :cond_94
    :goto_94
    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int/2addr v1, v4

    if-le p2, v1, :cond_bc

    .line 1701
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$500(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Z

    move-result v1

    if-nez v1, :cond_c1

    .line 1702
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$502(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1703
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$402(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1705
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$602(Lage/of/civilizations2/jakowski/lukasz/AoCGame;J)J

    .line 1706
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$702(Lage/of/civilizations2/jakowski/lukasz/AoCGame;F)F

    goto :goto_c1

    .line 1710
    :cond_bc
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1, v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$502(Lage/of/civilizations2/jakowski/lukasz/AoCGame;Z)Z

    .line 1716
    :cond_c1
    :goto_c1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$800(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Lage/of/civilizations2/jakowski/lukasz/Touch;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionMove_Hover(II)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_ca} :catch_cb

    .line 1718
    return v0

    .line 1722
    :catch_cb
    move-exception v1

    .line 1723
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1726
    .end local v1  # "ex":Ljava/lang/Exception;
    return v0
.end method

.method public scrolled(FF)Z
    .registers 7
    .param p1, "amountX"  # F
    .param p2, "amountY"  # F

    .line 1805
    add-float v0, p1, p2

    float-to-int v0, v0

    .line 1807
    .local v0, "amount":I
    const/4 v1, 0x1

    :try_start_4
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIsScrollableY_MenuHovered()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1808
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$900(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V

    .line 1809
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$1000(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)I

    move-result v3

    neg-int v3, v3

    mul-int v3, v3, v0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->scrollHoveredMenu_Y(I)V

    goto :goto_68

    .line 1811
    :cond_20
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIsScrollableX_MenuHovered()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1812
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$900(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V

    .line 1813
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$1000(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)I

    move-result v3

    neg-int v3, v3

    mul-int v3, v3, v0

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->scrollHoveredMenu_X(I)V

    goto :goto_68

    .line 1815
    :cond_3c
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getIsScrollable_Hovered_MenuElement()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1816
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$900(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)V

    .line 1817
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    if-ne v0, v1, :cond_55

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$1000(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)I

    move-result v3

    neg-int v3, v3

    goto :goto_5b

    :cond_55
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$1000(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)I

    move-result v3

    :goto_5b
    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->scrollHoveredMenuElement(I)V

    goto :goto_68

    .line 1820
    :cond_5f
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v2

    invoke-virtual {v2, v0}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->scrollScale(I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_68} :catch_69

    .line 1830
    .end local v0  # "amount":I
    :goto_68
    goto :goto_6d

    .line 1828
    :catch_69
    move-exception v0

    .line 1829
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1833
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_6d
    :try_start_6d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->SFXManager:Lage/of/civilizations2/jakowski/lukasz/SFXManager;

    sget v2, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->PERC_VOLUME_KEYBOARD:F

    invoke-virtual {v0, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(IF)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_76} :catch_77

    .line 1836
    goto :goto_7b

    .line 1834
    :catch_77
    move-exception v0

    .line 1835
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1838
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_7b
    return v1
.end method

.method public touchDown(IIII)Z
    .registers 6
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 1621
    :try_start_0
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->setMousePosXY(II)V

    .line 1623
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$800(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Lage/of/civilizations2/jakowski/lukasz/Touch;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionDown(IIII)V

    .line 1625
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->touchDown(IIII)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1628
    goto :goto_16

    .line 1626
    :catch_12
    move-exception v0

    .line 1627
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1630
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_16
    const/4 v0, 0x1

    return v0
.end method

.method public touchDragged(III)Z
    .registers 10
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I

    .line 1636
    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpSl()Lage/of/civilizations2/jakowski/lukasz/MapScroll;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/MapScroll;->setScrollPos(II)V

    .line 1638
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->setMousePosXY(II)V

    .line 1640
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    if-nez p3, :cond_3a

    .line 1641
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$800(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Lage/of/civilizations2/jakowski/lukasz/Touch;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v2

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4, v3}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v4

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionMove(IIII)V

    goto :goto_43

    .line 1643
    :cond_3a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$800(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Lage/of/civilizations2/jakowski/lukasz/Touch;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionMove(III)V

    .line 1646
    :goto_43
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;

    invoke-virtual {v1, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->touchDragged(III)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_49

    .line 1649
    goto :goto_4d

    .line 1647
    :catch_49
    move-exception v1

    .line 1648
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1651
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_4d
    return v0
.end method

.method public touchUp(IIII)Z
    .registers 11
    .param p1, "screenX"  # I
    .param p2, "screenY"  # I
    .param p3, "pointer"  # I
    .param p4, "button"  # I

    .line 1732
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Touch;->setMousePosXY(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_13c

    .line 1735
    :try_start_4
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getIsDesktop()Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 1736
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v1

    if-eqz v1, :cond_111

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    const v2, 0x3c23d70a  # 0.01f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_111

    .line 1737
    if-ne p4, v0, :cond_107

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->getActiveTurnStateID()Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;->INPUT_ORDERS:Lage/of/civilizations2/jakowski/lukasz/GameAction$TurnStates;

    if-ne v1, v2, :cond_107

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getVisible_InGame_FlagAction()Z

    move-result v1

    if-nez v1, :cond_107

    .line 1738
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getMovemPoints()I

    move-result v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v4, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v4

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getIdeology()I

    move-result v3

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getIdeologyID(I)Lage/of/civilizations2/jakowski/lukasz/Ideology;

    move-result-object v2

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/Ideology;->COST_OF_MOVE_OWN_PROVINCE:I

    if-lt v1, v2, :cond_b8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1739
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    if-ltz v1, :cond_b8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    .line 1741
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->getInGameView()Z

    move-result v1

    if-eqz v1, :cond_b8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Map;->getMpS()Lage/of/civilizations2/jakowski/lukasz/MapScale;

    move-result-object v1

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/MapScale;->getCurrSc()F

    move-result v1

    const/high16 v2, 0x3e800000  # 0.25f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b8

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->gameAction:Lage/of/civilizations2/jakowski/lukasz/GameAction;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1743
    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PLAYER_TURN_ID:I

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getPlayer(I)Lage/of/civilizations2/jakowski/lukasz/Player;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Player;->getCivId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/GameAction;->controlsArmyInProvince(II)Z

    move-result v1

    if-nez v1, :cond_af

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->lMABX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b8

    :cond_af
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    .line 1745
    invoke-virtual {v1, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->setProvinceID_PPM(II)Z

    move-result v1

    if-eqz v1, :cond_b8

    goto :goto_103

    .line 1750
    :cond_b8
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->actionUp(IIII)Z

    move-result v1

    if-nez v1, :cond_103

    .line 1752
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->cMABX()V

    .line 1754
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfoId()I

    move-result v1

    .line 1755
    .local v1, "oldActiveCivID":I
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Map;->getTouchMgr()Lage/of/civilizations2/jakowski/lukasz/TouchManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/TouchManager;->actionUp_setActiveProvinceID(II)V

    .line 1757
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->getActiveMapModeID()I

    move-result v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DIPLOMACY_MODE:I
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_da} :catch_125

    const/4 v4, 0x0

    if-ne v2, v3, :cond_fc

    .line 1759
    :try_start_dd
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v2

    if-ltz v2, :cond_f2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->getActiveCivInfoId()I

    move-result v2

    if-ne v1, v2, :cond_f2

    .line 1760
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DIPLOMACY_MODE:I

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->setActiveMapModeID(IZ)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_f2} :catch_f3

    .line 1764
    :cond_f2
    :goto_f2
    goto :goto_103

    .line 1762
    :catch_f3
    move-exception v2

    .line 1763
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_f4
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DIPLOMACY_MODE:I

    invoke-virtual {v3, v5, v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->setActiveMapModeID(IZ)V

    .end local v2  # "ex":Ljava/lang/Exception;
    goto :goto_f2

    .line 1767
    :cond_fc
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->mapModesManager:Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;

    sget v3, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->VIEW_DIPLOMACY_MODE:I

    invoke-virtual {v2, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/MapA/Mode/MapModesManager;->setActiveMapModeID(IZ)V

    .line 1772
    .end local v1  # "oldActiveCivID":I
    :cond_103
    :goto_103
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Touch;->resetAllModes()V

    goto :goto_124

    .line 1775
    :cond_107
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$800(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Lage/of/civilizations2/jakowski/lukasz/Touch;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionUp(IIII)V

    goto :goto_124

    .line 1779
    :cond_111
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$800(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Lage/of/civilizations2/jakowski/lukasz/Touch;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionUp(IIII)V

    goto :goto_124

    .line 1783
    :cond_11b
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$800(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Lage/of/civilizations2/jakowski/lukasz/Touch;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionUp(IIII)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_124} :catch_125

    .line 1791
    :goto_124
    goto :goto_136

    .line 1785
    :catch_125
    move-exception v1

    .line 1786
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_126
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/AoCGame$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/AoCGame;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->access$800(Lage/of/civilizations2/jakowski/lukasz/AoCGame;)Lage/of/civilizations2/jakowski/lukasz/Touch;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Touch;->actionUp(IIII)V

    .line 1788
    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v2, :cond_136

    .line 1789
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1793
    .end local v1  # "ex":Ljava/lang/Exception;
    :cond_136
    :goto_136
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorManager:Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorManager;->touchUp(IIII)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_13b} :catch_13c

    .line 1796
    goto :goto_140

    .line 1794
    :catch_13c
    move-exception v1

    .line 1795
    .restart local v1  # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 1799
    .end local v1  # "ex":Ljava/lang/Exception;
    :goto_140
    return v0
.end method

.class public Lcom/codedisaster/steamworks/SteamFriends;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;,
        Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;,
        Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;,
        Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;,
        Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;,
        Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;,
        Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;,
        Lcom/codedisaster/steamworks/SteamFriends$PersonaState;,
        Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamFriendsCallback;)V
    .registers 4
    .param p1, "callback"  # Lcom/codedisaster/steamworks/SteamFriendsCallback;

    .line 183
    new-instance v0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamFriendsCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamFriendsNative;->createCallback(Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    .line 184
    return-void
.end method


# virtual methods
.method public activateGameOverlay(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)V
    .registers 3
    .param p1, "dialog"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    .line 251
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->access$100(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlay(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public activateGameOverlayInviteDialog(Lcom/codedisaster/steamworks/SteamID;)V
    .registers 4
    .param p1, "steamIDLobby"  # Lcom/codedisaster/steamworks/SteamID;

    .line 271
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlayInviteDialog(J)V

    .line 272
    return-void
.end method

.method public activateGameOverlayToStore(ILcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;)V
    .registers 4
    .param p1, "appID"  # I
    .param p2, "flag"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    .line 263
    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlayToStore(II)V

    .line 264
    return-void
.end method

.method public activateGameOverlayToUser(Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;Lcom/codedisaster/steamworks/SteamID;)V
    .registers 6
    .param p1, "dialog"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;
    .param p2, "steamID"  # Lcom/codedisaster/steamworks/SteamID;

    .line 255
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->access$200(Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlayToUser(Ljava/lang/String;J)V

    .line 256
    return-void
.end method

.method public activateGameOverlayToWebPage(Ljava/lang/String;Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;)V
    .registers 4
    .param p1, "url"  # Ljava/lang/String;
    .param p2, "mode"  # Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    .line 259
    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlayToWebPage(Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public clearRichPresence()V
    .registers 1

    .line 279
    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriendsNative;->clearRichPresence()V

    .line 280
    return-void
.end method

.method public bridge synthetic dispose()V
    .registers 1

    .line 5
    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getCoplayFriend(I)Lcom/codedisaster/steamworks/SteamID;
    .registers 5
    .param p1, "index"  # I

    .line 307
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getCoplayFriend(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getCoplayFriendCount()I
    .registers 2

    .line 303
    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getCoplayFriendCount()I

    move-result v0

    return v0
.end method

.method public getFriendByIndex(ILcom/codedisaster/steamworks/SteamFriends$FriendFlags;)Lcom/codedisaster/steamworks/SteamID;
    .registers 6
    .param p1, "friend"  # I
    .param p2, "friendFlag"  # Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 207
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->access$000(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendByIndex(II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getFriendByIndex(ILjava/util/Collection;)Lcom/codedisaster/steamworks/SteamID;
    .registers 6
    .param p1, "friend"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;",
            ">;)",
            "Lcom/codedisaster/steamworks/SteamID;"
        }
    .end annotation

    .line 211
    .local p2, "friendFlags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;>;"
    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->asBits(Ljava/util/Collection;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendByIndex(II)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getFriendCoplayGame(Lcom/codedisaster/steamworks/SteamID;)I
    .registers 4
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;

    .line 315
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendCoplayGame(J)I

    move-result v0

    return v0
.end method

.method public getFriendCoplayTime(Lcom/codedisaster/steamworks/SteamID;)I
    .registers 4
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;

    .line 311
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendCoplayTime(J)I

    move-result v0

    return v0
.end method

.method public getFriendCount(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I
    .registers 3
    .param p1, "friendFlag"  # Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    .line 199
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->access$000(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendCount(I)I

    move-result v0

    return v0
.end method

.method public getFriendCount(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;",
            ">;)I"
        }
    .end annotation

    .line 203
    .local p1, "friendFlags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;>;"
    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->asBits(Ljava/util/Collection;)I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendCount(I)I

    move-result v0

    return v0
.end method

.method public getFriendGamePlayed(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;)Z
    .registers 5
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "friendGameInfo"  # Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;

    .line 227
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendGamePlayed(JLcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;)Z

    move-result v0

    return v0
.end method

.method public getFriendPersonaName(Lcom/codedisaster/steamworks/SteamID;)Ljava/lang/String;
    .registers 4
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;

    .line 223
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendPersonaName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendPersonaState(Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .registers 4
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;

    .line 219
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendPersonaState(J)I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    move-result-object v0

    return-object v0
.end method

.method public getFriendRelationship(Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    .registers 4
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;

    .line 215
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendRelationship(J)I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    move-result-object v0

    return-object v0
.end method

.method public getFriendRichPresence(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "key"  # Ljava/lang/String;

    .line 283
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendRichPresence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendRichPresenceKeyByIndex(Lcom/codedisaster/steamworks/SteamID;I)Ljava/lang/String;
    .registers 5
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "index"  # I

    .line 291
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendRichPresenceKeyByIndex(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendRichPresenceKeyCount(Lcom/codedisaster/steamworks/SteamID;)I
    .registers 4
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;

    .line 287
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendRichPresenceKeyCount(J)I

    move-result v0

    return v0
.end method

.method public getLargeFriendAvatar(Lcom/codedisaster/steamworks/SteamID;)I
    .registers 4
    .param p1, "steamID"  # Lcom/codedisaster/steamworks/SteamID;

    .line 243
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getLargeFriendAvatar(J)I

    move-result v0

    return v0
.end method

.method public getMediumFriendAvatar(Lcom/codedisaster/steamworks/SteamID;)I
    .registers 4
    .param p1, "steamID"  # Lcom/codedisaster/steamworks/SteamID;

    .line 239
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getMediumFriendAvatar(J)I

    move-result v0

    return v0
.end method

.method public getPersonaName()Ljava/lang/String;
    .registers 2

    .line 187
    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getPersonaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonaState()Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .registers 2

    .line 195
    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getPersonaState()I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    move-result-object v0

    return-object v0
.end method

.method public getSmallFriendAvatar(Lcom/codedisaster/steamworks/SteamID;)I
    .registers 4
    .param p1, "steamID"  # Lcom/codedisaster/steamworks/SteamID;

    .line 235
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getSmallFriendAvatar(J)I

    move-result v0

    return v0
.end method

.method public inviteUserToGame(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Z
    .registers 5
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "connectString"  # Ljava/lang/String;

    .line 299
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->inviteUserToGame(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestFriendRichPresence(Lcom/codedisaster/steamworks/SteamID;)V
    .registers 4
    .param p1, "steamIDFriend"  # Lcom/codedisaster/steamworks/SteamID;

    .line 295
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->requestFriendRichPresence(J)V

    .line 296
    return-void
.end method

.method public requestUserInformation(Lcom/codedisaster/steamworks/SteamID;Z)Z
    .registers 5
    .param p1, "steamID"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "requireNameOnly"  # Z

    .line 247
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->requestUserInformation(JZ)Z

    move-result v0

    return v0
.end method

.method public setInGameVoiceSpeaking(Lcom/codedisaster/steamworks/SteamID;Z)V
    .registers 5
    .param p1, "steamID"  # Lcom/codedisaster/steamworks/SteamID;
    .param p2, "speaking"  # Z

    .line 231
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->setInGameVoiceSpeaking(JZ)V

    .line 232
    return-void
.end method

.method public setPersonaName(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;
    .registers 5
    .param p1, "personaName"  # Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamFriends;->callback:J

    invoke-static {v1, v2, p1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->setPersonaName(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public setPlayedWith(Lcom/codedisaster/steamworks/SteamID;)V
    .registers 4
    .param p1, "steamIDUserPlayedWith"  # Lcom/codedisaster/steamworks/SteamID;

    .line 267
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->setPlayedWith(J)V

    .line 268
    return-void
.end method

.method public setRichPresence(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 275
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_6

    :cond_4
    const-string v0, ""

    :goto_6
    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamFriendsNative;->setRichPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

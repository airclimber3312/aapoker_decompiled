.class public final Landroidx/media2/SessionCommand2;
.super Ljava/lang/Object;
.source "SessionCommand2.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# static fields
.field public static final COMMAND_CODE_CUSTOM:I = 0x0

.field public static final COMMAND_CODE_LIBRARY_GET_CHILDREN:I = 0x1d

.field public static final COMMAND_CODE_LIBRARY_GET_ITEM:I = 0x1e

.field public static final COMMAND_CODE_LIBRARY_GET_LIBRARY_ROOT:I = 0x1f

.field public static final COMMAND_CODE_LIBRARY_GET_SEARCH_RESULT:I = 0x20

.field public static final COMMAND_CODE_LIBRARY_SEARCH:I = 0x21

.field public static final COMMAND_CODE_LIBRARY_SUBSCRIBE:I = 0x22

.field public static final COMMAND_CODE_LIBRARY_UNSUBSCRIBE:I = 0x23

.field public static final COMMAND_CODE_PLAYBACK_PAUSE:I = 0x2

.field public static final COMMAND_CODE_PLAYBACK_PLAY:I = 0x1

.field public static final COMMAND_CODE_PLAYBACK_PREPARE:I = 0x6

.field public static final COMMAND_CODE_PLAYBACK_RESET:I = 0x3

.field public static final COMMAND_CODE_PLAYBACK_SEEK_TO:I = 0x9

.field public static final COMMAND_CODE_PLAYBACK_SET_SPEED:I = 0x27

.field public static final COMMAND_CODE_PLAYLIST_ADD_ITEM:I = 0xf

.field public static final COMMAND_CODE_PLAYLIST_GET_CURRENT_MEDIA_ITEM:I = 0x14

.field public static final COMMAND_CODE_PLAYLIST_GET_LIST:I = 0x12

.field public static final COMMAND_CODE_PLAYLIST_GET_LIST_METADATA:I = 0x14

.field public static final COMMAND_CODE_PLAYLIST_REMOVE_ITEM:I = 0x10

.field public static final COMMAND_CODE_PLAYLIST_REPLACE_ITEM:I = 0x11

.field public static final COMMAND_CODE_PLAYLIST_SET_LIST:I = 0x13

.field public static final COMMAND_CODE_PLAYLIST_SET_LIST_METADATA:I = 0x15

.field public static final COMMAND_CODE_PLAYLIST_SET_REPEAT_MODE:I = 0xe

.field public static final COMMAND_CODE_PLAYLIST_SET_SHUFFLE_MODE:I = 0xd

.field public static final COMMAND_CODE_PLAYLIST_SKIP_TO_NEXT_ITEM:I = 0x4

.field public static final COMMAND_CODE_PLAYLIST_SKIP_TO_PLAYLIST_ITEM:I = 0xc

.field public static final COMMAND_CODE_PLAYLIST_SKIP_TO_PREV_ITEM:I = 0x5

.field public static final COMMAND_CODE_SESSION_FAST_FORWARD:I = 0x7

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_MEDIA_ID:I = 0x16

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_SEARCH:I = 0x18

.field public static final COMMAND_CODE_SESSION_PLAY_FROM_URI:I = 0x17

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_MEDIA_ID:I = 0x19

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_SEARCH:I = 0x1b

.field public static final COMMAND_CODE_SESSION_PREPARE_FROM_URI:I = 0x1a

.field public static final COMMAND_CODE_SESSION_REWIND:I = 0x8

.field public static final COMMAND_CODE_SESSION_SELECT_ROUTE:I = 0x26

.field public static final COMMAND_CODE_SESSION_SET_RATING:I = 0x1c

.field public static final COMMAND_CODE_SESSION_SUBSCRIBE_ROUTES_INFO:I = 0x24

.field public static final COMMAND_CODE_SESSION_UNSUBSCRIBE_ROUTES_INFO:I = 0x25

.field public static final COMMAND_CODE_VOLUME_ADJUST_VOLUME:I = 0xb

.field public static final COMMAND_CODE_VOLUME_SET_VOLUME:I = 0xa

.field private static final KEY_COMMAND_CODE:Ljava/lang/String; = "android.media.session2.command.command_code"

.field private static final KEY_COMMAND_CUSTOM_COMMAND:Ljava/lang/String; = "android.media.session2.command.custom_command"

.field private static final KEY_COMMAND_EXTRAS:Ljava/lang/String; = "android.media.session2.command.extras"


# instance fields
.field mCommandCode:I

.field mCustomCommand:Ljava/lang/String;

.field mExtras:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 361
    iput p1, p0, Landroidx/media2/SessionCommand2;->mCommandCode:I

    const/4 p1, 0x0

    .line 362
    iput-object p1, p0, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    .line 363
    iput-object p1, p0, Landroidx/media2/SessionCommand2;->mExtras:Landroid/os/Bundle;

    return-void

    .line 359
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 376
    iput v0, p0, Landroidx/media2/SessionCommand2;->mCommandCode:I

    .line 377
    iput-object p1, p0, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    .line 378
    iput-object p2, p0, Landroidx/media2/SessionCommand2;->mExtras:Landroid/os/Bundle;

    return-void

    .line 374
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "action shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media2/SessionCommand2;
    .locals 3

    if-eqz p0, :cond_2

    const-string v0, "android.media.session2.command.command_code"

    .line 427
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    new-instance p0, Landroidx/media2/SessionCommand2;

    invoke-direct {p0, v0}, Landroidx/media2/SessionCommand2;-><init>(I)V

    return-object p0

    :cond_0
    const-string v0, "android.media.session2.command.custom_command"

    .line 431
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 435
    :cond_1
    new-instance v1, Landroidx/media2/SessionCommand2;

    const-string v2, "android.media.session2.command.extras"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroidx/media2/SessionCommand2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1

    .line 425
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "command shouldn\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 441
    instance-of v0, p1, Landroidx/media2/SessionCommand2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 444
    :cond_0
    check-cast p1, Landroidx/media2/SessionCommand2;

    .line 445
    iget v0, p0, Landroidx/media2/SessionCommand2;->mCommandCode:I

    iget v2, p1, Landroidx/media2/SessionCommand2;->mCommandCode:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    .line 446
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCommandCode()I
    .locals 1

    .line 386
    iget v0, p0, Landroidx/media2/SessionCommand2;->mCommandCode:I

    return v0
.end method

.method public getCustomCommand()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 402
    iget-object v0, p0, Landroidx/media2/SessionCommand2;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 452
    iget-object v0, p0, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/SessionCommand2;->mCommandCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 411
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.session2.command.command_code"

    .line 412
    iget v2, p0, Landroidx/media2/SessionCommand2;->mCommandCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.media.session2.command.custom_command"

    .line 413
    iget-object v2, p0, Landroidx/media2/SessionCommand2;->mCustomCommand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.session2.command.extras"

    .line 414
    iget-object v2, p0, Landroidx/media2/SessionCommand2;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

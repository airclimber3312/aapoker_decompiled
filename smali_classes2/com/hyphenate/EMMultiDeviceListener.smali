.class public interface abstract Lcom/hyphenate/EMMultiDeviceListener;
.super Ljava/lang/Object;


# static fields
.field public static final CONTACT_ACCEPT:I = 0x3

.field public static final CONTACT_ALLOW:I = 0x6

.field public static final CONTACT_BAN:I = 0x5

.field public static final CONTACT_DECLINE:I = 0x4

.field public static final CONTACT_REMOVE:I = 0x2

.field public static final CONVERSATION_DELETED:I = 0x3e

.field public static final CONVERSATION_MARK_UPDATE:I = 0x3f

.field public static final CONVERSATION_PINNED:I = 0x3c

.field public static final CONVERSATION_UNPINNED:I = 0x3d

.field public static final GROUP_ADD_ADMIN:I = 0x1a

.field public static final GROUP_ADD_MUTE:I = 0x1c

.field public static final GROUP_ADD_USER_WHITE_LIST:I = 0x1e

.field public static final GROUP_ALLOW:I = 0x16

.field public static final GROUP_ALL_BAN:I = 0x20

.field public static final GROUP_APPLY:I = 0xe

.field public static final GROUP_APPLY_ACCEPT:I = 0xf

.field public static final GROUP_APPLY_DECLINE:I = 0x10

.field public static final GROUP_ASSIGN_OWNER:I = 0x19

.field public static final GROUP_BAN:I = 0x15

.field public static final GROUP_BLOCK:I = 0x17

.field public static final GROUP_CREATE:I = 0xa

.field public static final GROUP_DESTROY:I = 0xb

.field public static final GROUP_INVITE:I = 0x11

.field public static final GROUP_INVITE_ACCEPT:I = 0x12

.field public static final GROUP_INVITE_DECLINE:I = 0x13

.field public static final GROUP_JOIN:I = 0xc

.field public static final GROUP_KICK:I = 0x14

.field public static final GROUP_LEAVE:I = 0xd

.field public static final GROUP_METADATA_CHANGED:I = 0x34

.field public static final GROUP_REMOVE_ADMIN:I = 0x1b

.field public static final GROUP_REMOVE_ALL_BAN:I = 0x21

.field public static final GROUP_REMOVE_MUTE:I = 0x1d

.field public static final GROUP_REMOVE_USER_WHITE_LIST:I = 0x1f

.field public static final GROUP_UNBLOCK:I = 0x18

.field public static final THREAD_CREATE:I = 0x28

.field public static final THREAD_DESTROY:I = 0x29

.field public static final THREAD_JOIN:I = 0x2a

.field public static final THREAD_KICK:I = 0x2d

.field public static final THREAD_LEAVE:I = 0x2b

.field public static final THREAD_UPDATE:I = 0x2c


# virtual methods
.method public abstract onChatThreadEvent(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onContactEvent(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onConversationEvent(ILjava/lang/String;Lcom/hyphenate/chat/EMConversation$EMConversationType;)V
.end method

.method public abstract onGroupEvent(ILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageRemoved(Ljava/lang/String;Ljava/lang/String;)V
.end method

.class public final enum Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/adapter/EMAChatRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMAChatRoomStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

.field public static final enum EMAChatRoomStylePrivateMemberCanInvite:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

.field public static final enum EMAChatRoomStylePrivateOnlyOwnerInvite:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

.field public static final enum EMAChatRoomStylePublicJoinNeedApproval:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

.field public static final enum EMAChatRoomStylePublicOpenJoin:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->EMAChatRoomStylePrivateOnlyOwnerInvite:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->EMAChatRoomStylePrivateMemberCanInvite:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->EMAChatRoomStylePublicJoinNeedApproval:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->EMAChatRoomStylePublicOpenJoin:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    const-string v1, "EMAChatRoomStylePrivateOnlyOwnerInvite"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->EMAChatRoomStylePrivateOnlyOwnerInvite:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    const-string v1, "EMAChatRoomStylePrivateMemberCanInvite"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->EMAChatRoomStylePrivateMemberCanInvite:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    const-string v1, "EMAChatRoomStylePublicJoinNeedApproval"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->EMAChatRoomStylePublicJoinNeedApproval:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    new-instance v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    const-string v1, "EMAChatRoomStylePublicOpenJoin"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->EMAChatRoomStylePublicOpenJoin:Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    invoke-static {}, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->$values()[Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->$VALUES:[Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/adapter/EMAChatRoom$EMAChatRoomStyle;

    return-object v0
.end method

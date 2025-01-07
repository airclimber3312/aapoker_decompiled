.class public final enum Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMChatRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMChatRoomPermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

.field public static final enum admin:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

.field public static final enum member:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

.field public static final enum none:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

.field public static final enum owner:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;


# instance fields
.field private permissionType:I


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->member:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->admin:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->owner:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->none:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    const-string v1, "member"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->member:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    new-instance v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    const-string v1, "admin"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->admin:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    new-instance v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    const-string v1, "owner"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->owner:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    new-instance v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "none"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->none:Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    invoke-static {}, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->$values()[Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->$VALUES:[Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->permissionType:I

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;)I
    .locals 0

    iget p0, p0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->permissionType:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->$VALUES:[Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMChatRoom$EMChatRoomPermissionType;

    return-object v0
.end method

.class public final enum Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMGroupStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

.field public static final enum EMGroupStylePrivateMemberCanInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

.field public static final enum EMGroupStylePrivateOnlyOwnerInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

.field public static final enum EMGroupStylePublicJoinNeedApproval:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

.field public static final enum EMGroupStylePublicOpenJoin:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePrivateOnlyOwnerInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePrivateMemberCanInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePublicJoinNeedApproval:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePublicOpenJoin:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    const-string v1, "EMGroupStylePrivateOnlyOwnerInvite"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePrivateOnlyOwnerInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    new-instance v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    const-string v1, "EMGroupStylePrivateMemberCanInvite"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePrivateMemberCanInvite:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    new-instance v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    const-string v1, "EMGroupStylePublicJoinNeedApproval"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePublicJoinNeedApproval:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    new-instance v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    const-string v1, "EMGroupStylePublicOpenJoin"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->EMGroupStylePublicOpenJoin:Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    invoke-static {}, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->$values()[Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->$VALUES:[Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

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

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->$VALUES:[Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMGroupManager$EMGroupStyle;

    return-object v0
.end method

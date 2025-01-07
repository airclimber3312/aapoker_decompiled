.class public final enum Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMGroupPermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

.field public static final enum admin:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

.field public static final enum member:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

.field public static final enum none:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

.field public static final enum owner:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;


# instance fields
.field private permissionType:I


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->member:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->admin:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->owner:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->none:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    const-string v1, "member"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->member:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    new-instance v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    const-string v1, "admin"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->admin:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    new-instance v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    const-string v1, "owner"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->owner:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    new-instance v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "none"

    invoke-direct {v0, v3, v1, v2}, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->none:Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    invoke-static {}, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->$values()[Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->$VALUES:[Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

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

    iput p3, p0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->permissionType:I

    return-void
.end method

.method static synthetic access$000(Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;)I
    .locals 0

    iget p0, p0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->permissionType:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->$VALUES:[Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMGroup$EMGroupPermissionType;

    return-object v0
.end method

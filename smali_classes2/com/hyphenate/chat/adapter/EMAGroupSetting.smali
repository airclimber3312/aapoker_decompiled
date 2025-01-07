.class public Lcom/hyphenate/chat/adapter/EMAGroupSetting;
.super Lcom/hyphenate/chat/adapter/EMABase;


# static fields
.field public static final EMAGroupStyle_PRIVATE_MEMBER_INVITE:I = 0x1

.field public static final EMAGroupStyle_PRIVATE_OWNER_INVITE:I = 0x0

.field public static final EMAGroupStyle_PUBLIC_ANONYMOUS:I = 0x4

.field public static final EMAGroupStyle_PUBLIC_JOIN_APPROVAL:I = 0x2

.field public static final EMAGroupStyle_PUBLIC_JOIN_OPEN:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    const/16 v0, 0xc8

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeInit(IIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeInit(IIZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyphenate/chat/adapter/EMAGroupSetting;)V
    .locals 0

    invoke-direct {p0}, Lcom/hyphenate/chat/adapter/EMABase;-><init>()V

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeInit(Lcom/hyphenate/chat/adapter/EMAGroupSetting;)V

    return-void
.end method


# virtual methods
.method public extension()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeFinalize()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public inviteNeedConfirm()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeInviteNeedConfirm()Z

    move-result v0

    return v0
.end method

.method public maxUserCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeMaxUserCount()I

    move-result v0

    return v0
.end method

.method native nativeExtension()Ljava/lang/String;
.end method

.method native nativeFinalize()V
.end method

.method native nativeInit(IIZLjava/lang/String;)V
.end method

.method native nativeInit(Lcom/hyphenate/chat/adapter/EMAGroupSetting;)V
.end method

.method native nativeInviteNeedConfirm()Z
.end method

.method native nativeMaxUserCount()I
.end method

.method native nativeSetMaxUserCount(I)V
.end method

.method native nativeSetStyle(I)V
.end method

.method native nativeStyle()I
.end method

.method public setMaxUserCount(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeSetMaxUserCount(I)V

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeSetStyle(I)V

    return-void
.end method

.method public style()I
    .locals 1

    invoke-virtual {p0}, Lcom/hyphenate/chat/adapter/EMAGroupSetting;->nativeStyle()I

    move-result v0

    return v0
.end method

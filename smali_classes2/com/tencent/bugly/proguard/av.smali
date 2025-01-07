.class public final Lcom/tencent/bugly/proguard/av;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00048F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/tencent/bugly/common/network/ssl/NameVerifierFactory;",
        "",
        "()V",
        "DEFAULT_NAME_VERIFIER",
        "Ljavax/net/ssl/HostnameVerifier;",
        "value",
        "nameVerifier",
        "getNameVerifier",
        "()Ljavax/net/ssl/HostnameVerifier;",
        "setNameVerifier",
        "(Ljavax/net/ssl/HostnameVerifier;)V",
        "bugly-pro_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final ct:Ljavax/net/ssl/HostnameVerifier;

.field private static cu:Ljavax/net/ssl/HostnameVerifier;

.field public static final cv:Lcom/tencent/bugly/proguard/av;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/av;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/av;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/av;->cv:Lcom/tencent/bugly/proguard/av;

    new-instance v0, Lcom/tencent/bugly/proguard/as;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/as;-><init>()V

    check-cast v0, Ljavax/net/ssl/HostnameVerifier;

    sput-object v0, Lcom/tencent/bugly/proguard/av;->ct:Ljavax/net/ssl/HostnameVerifier;

    sput-object v0, Lcom/tencent/bugly/proguard/av;->cu:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    const-class v0, Lcom/tencent/bugly/proguard/aw;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/bugly/proguard/av;->cu:Ljavax/net/ssl/HostnameVerifier;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static ae()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/av;->cu:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/av;->ct:Ljavax/net/ssl/HostnameVerifier;

    :cond_0
    return-object v0
.end method

.class public final Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;
.super Ljava/lang/Object;
.source "MediaRouteDiscoveryRequest.java"


# static fields
.field private static final KEY_ACTIVE_SCAN:Ljava/lang/String; = "activeScan"

.field private static final KEY_SELECTOR:Ljava/lang/String; = "selector"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    .line 46
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    const-string v1, "selector"

    .line 47
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector;->asBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "activeScan"

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureSelector()V
    .locals 2

    .line 64
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    const-string v1, "selector"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_0
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;
    .locals 1

    if-eqz p0, :cond_0

    .line 130
    new-instance v0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 91
    instance-of v0, p1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 93
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getSelector()Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    .line 60
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 101
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isActiveScan()Z
    .locals 2

    .line 78
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mBundle:Landroid/os/Bundle;

    const-string v1, "activeScan"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 85
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->ensureSelector()V

    .line 86
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isValid()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiscoveryRequest{ selector="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeScan="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/onevcat/uniwebview/SafeBrowsingManager;
.super Ljava/lang/Object;
.source "SafeBrowsingManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/SafeBrowsingManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0005J\u0016\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0005R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/SafeBrowsingManager;",
        "",
        "()V",
        "containers",
        "Ljava/util/HashMap;",
        "",
        "Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;",
        "Lkotlin/collections/HashMap;",
        "getUniWebViewSafeBrowsing",
        "name",
        "remove",
        "",
        "set",
        "browsing",
        "Companion",
        "uniwebview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onevcat/uniwebview/SafeBrowsingManager$Companion;

.field private static final instance:Lcom/onevcat/uniwebview/SafeBrowsingManager;


# instance fields
.field private final containers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onevcat/uniwebview/SafeBrowsingManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/SafeBrowsingManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/SafeBrowsingManager;->Companion:Lcom/onevcat/uniwebview/SafeBrowsingManager$Companion;

    .line 7
    new-instance v0, Lcom/onevcat/uniwebview/SafeBrowsingManager;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/SafeBrowsingManager;-><init>()V

    sput-object v0, Lcom/onevcat/uniwebview/SafeBrowsingManager;->instance:Lcom/onevcat/uniwebview/SafeBrowsingManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onevcat/uniwebview/SafeBrowsingManager;->containers:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/onevcat/uniwebview/SafeBrowsingManager;
    .locals 1

    .line 3
    sget-object v0, Lcom/onevcat/uniwebview/SafeBrowsingManager;->instance:Lcom/onevcat/uniwebview/SafeBrowsingManager;

    return-object v0
.end method


# virtual methods
.method public final getUniWebViewSafeBrowsing(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/onevcat/uniwebview/SafeBrowsingManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;

    return-object p1
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing safe browsing from manager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/onevcat/uniwebview/SafeBrowsingManager;->containers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final set(Lcom/onevcat/uniwebview/UniWebViewSafeBrowsing;Ljava/lang/String;)V
    .locals 3

    const-string v0, "browsing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/Logger$Companion;->getInstance()Lcom/onevcat/uniwebview/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding safe browsing to manager: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/Logger;->debug$uniwebview_release(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/onevcat/uniwebview/SafeBrowsingManager;->containers:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

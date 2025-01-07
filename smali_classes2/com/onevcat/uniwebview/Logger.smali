.class public final Lcom/onevcat/uniwebview/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onevcat/uniwebview/Logger$Level;,
        Lcom/onevcat/uniwebview/Logger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\u0010J\u0015\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\u0012J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\u0014J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J\u0015\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0003H\u0000\u00a2\u0006\u0002\u0008\u0018R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/Logger;",
        "",
        "tag",
        "",
        "level",
        "",
        "(Ljava/lang/String;I)V",
        "getLevel",
        "()I",
        "setLevel",
        "(I)V",
        "getTag",
        "()Ljava/lang/String;",
        "critical",
        "",
        "message",
        "critical$uniwebview_release",
        "debug",
        "debug$uniwebview_release",
        "info",
        "info$uniwebview_release",
        "log",
        "Lcom/onevcat/uniwebview/Logger$Level;",
        "verbose",
        "verbose$uniwebview_release",
        "Companion",
        "Level",
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
.field public static final Companion:Lcom/onevcat/uniwebview/Logger$Companion;

.field private static final instance:Lcom/onevcat/uniwebview/Logger;


# instance fields
.field private level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onevcat/uniwebview/Logger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/Logger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onevcat/uniwebview/Logger;->Companion:Lcom/onevcat/uniwebview/Logger$Companion;

    .line 16
    new-instance v0, Lcom/onevcat/uniwebview/Logger;

    sget-object v1, Lcom/onevcat/uniwebview/Logger$Level;->CRITICAL:Lcom/onevcat/uniwebview/Logger$Level;

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/Logger$Level;->getValue()I

    move-result v1

    const-string v2, "UniWebView"

    invoke-direct {v0, v2, v1}, Lcom/onevcat/uniwebview/Logger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onevcat/uniwebview/Logger;->instance:Lcom/onevcat/uniwebview/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/Logger;->tag:Ljava/lang/String;

    iput p2, p0, Lcom/onevcat/uniwebview/Logger;->level:I

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/onevcat/uniwebview/Logger;
    .locals 1

    .line 5
    sget-object v0, Lcom/onevcat/uniwebview/Logger;->instance:Lcom/onevcat/uniwebview/Logger;

    return-object v0
.end method

.method private final log(Lcom/onevcat/uniwebview/Logger$Level;Ljava/lang/String;)V
    .locals 2

    .line 26
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/Logger$Level;->getValue()I

    move-result v0

    iget v1, p0, Lcom/onevcat/uniwebview/Logger;->level:I

    if-ge v0, v1, :cond_0

    return-void

    .line 27
    :cond_0
    sget-object v0, Lcom/onevcat/uniwebview/Logger$Level;->CRITICAL:Lcom/onevcat/uniwebview/Logger$Level;

    const-string v1, "<UniWebView-Android> "

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/onevcat/uniwebview/Logger;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/onevcat/uniwebview/Logger;->tag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final critical$uniwebview_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/onevcat/uniwebview/Logger$Level;->CRITICAL:Lcom/onevcat/uniwebview/Logger$Level;

    invoke-direct {p0, v0, p1}, Lcom/onevcat/uniwebview/Logger;->log(Lcom/onevcat/uniwebview/Logger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public final debug$uniwebview_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/onevcat/uniwebview/Logger$Level;->DEBUG:Lcom/onevcat/uniwebview/Logger$Level;

    invoke-direct {p0, v0, p1}, Lcom/onevcat/uniwebview/Logger;->log(Lcom/onevcat/uniwebview/Logger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public final getLevel()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/onevcat/uniwebview/Logger;->level:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/onevcat/uniwebview/Logger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final info$uniwebview_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/onevcat/uniwebview/Logger$Level;->INFO:Lcom/onevcat/uniwebview/Logger$Level;

    invoke-direct {p0, v0, p1}, Lcom/onevcat/uniwebview/Logger;->log(Lcom/onevcat/uniwebview/Logger$Level;Ljava/lang/String;)V

    return-void
.end method

.method public final setLevel(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/onevcat/uniwebview/Logger;->level:I

    return-void
.end method

.method public final verbose$uniwebview_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/onevcat/uniwebview/Logger$Level;->VERBOSE:Lcom/onevcat/uniwebview/Logger$Level;

    invoke-direct {p0, v0, p1}, Lcom/onevcat/uniwebview/Logger;->log(Lcom/onevcat/uniwebview/Logger$Level;Ljava/lang/String;)V

    return-void
.end method

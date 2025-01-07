.class public final Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onevcat/uniwebview/AndroidBug5497Workaround;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;",
        "",
        "()V",
        "assistFrameLayout",
        "Lcom/onevcat/uniwebview/AndroidBug5497Workaround;",
        "frameLayout",
        "Landroid/widget/FrameLayout;",
        "activity",
        "Landroid/app/Activity;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final assistFrameLayout(Landroid/widget/FrameLayout;Landroid/app/Activity;)Lcom/onevcat/uniwebview/AndroidBug5497Workaround;
    .locals 2

    const-string v0, "frameLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/onevcat/uniwebview/AndroidBug5497Workaround;-><init>(Landroid/widget/FrameLayout;Landroid/app/Activity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.class final Lcom/tencent/bugly/proguard/qt$e;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/qt;->c(Lcom/tencent/bugly/proguard/qs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Hk:Lcom/tencent/bugly/proguard/qt$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/proguard/qt$e;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/qt$e;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/qt$e;->Hk:Lcom/tencent/bugly/proguard/qt$e;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/tencent/bugly/proguard/kp;->yL:Lcom/tencent/bugly/proguard/kp$a;

    sget-object v0, Lcom/tencent/bugly/proguard/id;->vl:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/kp$a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

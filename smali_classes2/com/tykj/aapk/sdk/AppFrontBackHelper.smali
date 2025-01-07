.class public Lcom/tykj/aapk/sdk/AppFrontBackHelper;
.super Ljava/lang/Object;
.source "AppFrontBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tykj/aapk/sdk/AppFrontBackHelper$OnAppStatusListener;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String; = "AppFrontBackHelper"


# instance fields
.field private activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mOnAppStatusListener:Lcom/tykj/aapk/sdk/AppFrontBackHelper$OnAppStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/tykj/aapk/sdk/AppFrontBackHelper$1;

    invoke-direct {v0, p0}, Lcom/tykj/aapk/sdk/AppFrontBackHelper$1;-><init>(Lcom/tykj/aapk/sdk/AppFrontBackHelper;)V

    iput-object v0, p0, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public register(Landroid/app/Application;Lcom/tykj/aapk/sdk/AppFrontBackHelper$OnAppStatusListener;)V
    .locals 0

    .line 24
    iput-object p2, p0, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->mOnAppStatusListener:Lcom/tykj/aapk/sdk/AppFrontBackHelper$OnAppStatusListener;

    .line 25
    iget-object p2, p0, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unRegister(Landroid/app/Application;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tykj/aapk/sdk/AppFrontBackHelper;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

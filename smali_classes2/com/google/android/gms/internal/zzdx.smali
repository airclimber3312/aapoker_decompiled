.class public final Lcom/google/android/gms/internal/zzdx;
.super Lcom/google/android/gms/internal/zzeu;


# instance fields
.field private final zzakg:Landroid/app/Activity;

.field private final zzakh:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzba;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    const/16 v6, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzeu;-><init>(Lcom/google/android/gms/internal/zzdm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzba;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzdx;->zzakh:Landroid/view/View;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzdx;->zzakg:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected final zzaw()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdx;->zzakh:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdx;->zzaku:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdx;->zzakh:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdx;->zzakg:Landroid/app/Activity;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdx;->zzakm:Lcom/google/android/gms/internal/zzba;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzdx;->zzakm:Lcom/google/android/gms/internal/zzba;

    aget-wide v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzba;->zzey:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdx;->zzakm:Lcom/google/android/gms/internal/zzba;

    aget-wide v3, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/zzba;->zzez:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

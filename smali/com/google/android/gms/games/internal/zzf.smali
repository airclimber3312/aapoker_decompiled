.class public final Lcom/google/android/gms/games/internal/zzf;
.super Ljava/lang/Object;


# static fields
.field private static final zzhzk:Lcom/google/android/gms/common/internal/zzal;

.field private static final zzhzl:Lcom/google/android/gms/internal/zzbfx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbfx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzal;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/internal/zzf;->zzhzk:Lcom/google/android/gms/common/internal/zzal;

    const-string v0, "games.play_games_dogfood"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbfx;->zze(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzbfx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/internal/zzf;->zzhzl:Lcom/google/android/gms/internal/zzbfx;

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zzf;->zzhzk:Lcom/google/android/gms/common/internal/zzal;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzal;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zzf;->zzhzk:Lcom/google/android/gms/common/internal/zzal;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzal;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zzf;->zzhzk:Lcom/google/android/gms/common/internal/zzal;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zzf;->zzhzk:Lcom/google/android/gms/common/internal/zzal;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzal;->zzv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zzf;->zzhzk:Lcom/google/android/gms/common/internal/zzal;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzal;->zzw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

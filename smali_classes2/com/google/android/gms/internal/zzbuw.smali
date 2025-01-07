.class public final Lcom/google/android/gms/internal/zzbuw;
.super Ljava/lang/Object;


# static fields
.field public static final zzhap:Lcom/google/android/gms/internal/zzbux;

.field public static final zzhaq:Lcom/google/android/gms/internal/zzbuy;

.field public static final zzhar:Lcom/google/android/gms/internal/zzbva;

.field public static final zzhas:Lcom/google/android/gms/internal/zzbuz;

.field public static final zzhat:Lcom/google/android/gms/internal/zzbvc;

.field public static final zzhau:Lcom/google/android/gms/internal/zzbvb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbux;

    const-string v1, "created"

    const v2, 0x3e8fa0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbux;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbuw;->zzhap:Lcom/google/android/gms/internal/zzbux;

    new-instance v0, Lcom/google/android/gms/internal/zzbuy;

    const-string v1, "lastOpenedTime"

    const v3, 0x419ce0

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbuy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbuw;->zzhaq:Lcom/google/android/gms/internal/zzbuy;

    new-instance v0, Lcom/google/android/gms/internal/zzbva;

    const-string v1, "modified"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbva;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbuw;->zzhar:Lcom/google/android/gms/internal/zzbva;

    new-instance v0, Lcom/google/android/gms/internal/zzbuz;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbuz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbuw;->zzhas:Lcom/google/android/gms/internal/zzbuz;

    new-instance v0, Lcom/google/android/gms/internal/zzbvc;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbvc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbuw;->zzhat:Lcom/google/android/gms/internal/zzbvc;

    new-instance v0, Lcom/google/android/gms/internal/zzbvb;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbvb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbuw;->zzhau:Lcom/google/android/gms/internal/zzbvb;

    return-void
.end method

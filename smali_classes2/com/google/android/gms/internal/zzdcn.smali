.class final Lcom/google/android/gms/internal/zzdcn;
.super Ljava/lang/Object;


# static fields
.field private static zzkzx:[Ljava/lang/String;


# instance fields
.field private final zzkzv:Ljava/lang/String;

.field private final zzkzw:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzbi;->zzmy:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzbi;->zzmz:Lcom/google/android/gms/internal/zzbi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/zzdcn;->zzkzx:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdcn;->zzkzv:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/zzdcn;->zzkzx:[Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdcn;->zzkzw:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdcn;->zzkzv:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdcn;->zzkzw:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzbjk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdcn;->zzkzv:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbjl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdcn;->zzkzw:[Ljava/lang/String;

    return-object v0
.end method

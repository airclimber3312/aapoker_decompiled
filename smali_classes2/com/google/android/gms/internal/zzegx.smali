.class public final Lcom/google/android/gms/internal/zzegx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeex;


# instance fields
.field private final zzmwr:Lcom/google/android/gms/internal/zzeia;

.field private zzncx:Lcom/google/android/gms/internal/zzeew;

.field private final zznex:Lcom/google/android/gms/internal/zzeoz;

.field private zzney:Lcom/google/android/gms/internal/zzeik;

.field private zznez:Lcom/google/android/gms/internal/zzeil;

.field private zznfa:Lcom/google/android/gms/internal/zzelc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzelc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;>;"
        }
    .end annotation
.end field

.field private zznfb:Z

.field private final zznfc:Lcom/google/android/gms/internal/zzelp;

.field private final zznfd:Lcom/google/android/gms/internal/zzegm;

.field private final zznfe:Lcom/google/android/gms/internal/zzemm;

.field private final zznff:Lcom/google/android/gms/internal/zzemm;

.field private final zznfg:Lcom/google/android/gms/internal/zzemm;

.field private zznfh:J

.field private zznfi:J

.field private zznfj:Lcom/google/android/gms/internal/zzeir;

.field private zznfk:Lcom/google/android/gms/internal/zzeir;

.field private zznfl:Lcom/google/firebase/database/FirebaseDatabase;

.field private zznfm:Z

.field private zznfn:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeia;Lcom/google/android/gms/internal/zzegm;Lcom/google/firebase/database/FirebaseDatabase;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzeoz;

    new-instance v1, Lcom/google/android/gms/internal/zzeot;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzeot;-><init>()V

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeoz;-><init>(Lcom/google/android/gms/internal/zzeos;J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfb:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzegx;->zznfh:J

    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzegx;->zznfi:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfm:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzegx;->zznfn:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zzmwr:Lcom/google/android/gms/internal/zzeia;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegx;->zznfl:Lcom/google/firebase/database/FirebaseDatabase;

    const-string p1, "RepoOperation"

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzegm;->zzqb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    const-string p1, "Transaction"

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzegm;->zzqb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznff:Lcom/google/android/gms/internal/zzemm;

    const-string p1, "DataOperation"

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzegm;->zzqb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfg:Lcom/google/android/gms/internal/zzemm;

    new-instance p1, Lcom/google/android/gms/internal/zzelp;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzelp;-><init>(Lcom/google/android/gms/internal/zzegm;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfc:Lcom/google/android/gms/internal/zzelp;

    new-instance p1, Lcom/google/android/gms/internal/zzegy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzegy;-><init>(Lcom/google/android/gms/internal/zzegx;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;I)Lcom/google/android/gms/internal/zzegu;
    .locals 0

    const/16 p2, -0x9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzegu;I)Lcom/google/android/gms/internal/zzegu;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;)Lcom/google/android/gms/internal/zzenn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/zzenn;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzeir;->zzc(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final zza(JLcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-eq v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    xor-int/lit8 v4, p4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzeir;->zza(JZZLcom/google/android/gms/internal/zzeos;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzegx;->zzn(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzegx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbyu()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzegx;JLcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzegx;->zza(JLcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzelc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzelc;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzelc;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzelc;I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzegx;Ljava/lang/String;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzegx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzegx;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzegx;Ljava/util/List;Lcom/google/android/gms/internal/zzelc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzegx;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzelc;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzelc;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelc;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzc(Lcom/google/android/gms/internal/zzelc;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzehy;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;)I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/zzehz;->zzngx:I

    if-eq v4, v5, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelc;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzehy;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzenn;->zzccc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzehy;

    sget v6, Lcom/google/android/gms/internal/zzehz;->zzngy:I

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;I)I

    invoke-static {v5}, Lcom/google/android/gms/internal/zzehy;->zzd(Lcom/google/android/gms/internal/zzehy;)I

    invoke-static {v5}, Lcom/google/android/gms/internal/zzehy;->zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v6

    invoke-static {v5}, Lcom/google/android/gms/internal/zzehy;->zzf(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Lcom/google/android/gms/internal/zzenn;->zzl(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzenn;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzehf;

    invoke-direct {v5, p0, p1, v0, p0}, Lcom/google/android/gms/internal/zzehf;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Ljava/util/List;Lcom/google/android/gms/internal/zzegx;)V

    invoke-interface {v2, v4, v1, v3, v5}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/zzefo;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelc;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/zzehe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzehe;-><init>(Lcom/google/android/gms/internal/zzegx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzelc;->zza(Lcom/google/android/gms/internal/zzelf;)V

    :cond_6
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzelc;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/zzelc;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "Unknown transaction abort reason: "

    const/16 v7, 0x2d

    const/16 v8, -0x9

    const/16 v9, -0x19

    if-ne v2, v8, :cond_0

    const-string v12, "overriddenBySet"

    invoke-static {v12}, Lcom/google/firebase/database/DatabaseError;->zzpm(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v12

    goto :goto_1

    :cond_0
    if-ne v2, v9, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    invoke-static {v9}, Lcom/google/firebase/database/DatabaseError;->zzhg(I)Lcom/google/firebase/database/DatabaseError;

    move-result-object v12

    :goto_1
    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v14, v11, :cond_6

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/zzehy;

    invoke-static {v11}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;)I

    move-result v10

    sget v13, Lcom/google/android/gms/internal/zzehz;->zznha:I

    if-eq v10, v13, :cond_2

    invoke-static {v11}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;)I

    move-result v10

    sget v13, Lcom/google/android/gms/internal/zzehz;->zzngy:I

    if-ne v10, v13, :cond_3

    sget v10, Lcom/google/android/gms/internal/zzehz;->zznha:I

    invoke-static {v11, v10}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;I)I

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    move v15, v14

    :cond_2
    const/16 v13, 0x2d

    goto :goto_5

    :cond_3
    new-instance v10, Lcom/google/android/gms/internal/zzejp;

    invoke-static {v11}, Lcom/google/android/gms/internal/zzehy;->zzi(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v13

    invoke-static {v11}, Lcom/google/android/gms/internal/zzehy;->zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/zzelu;->zzam(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelu;

    move-result-object v7

    invoke-direct {v10, v0, v13, v7}, Lcom/google/android/gms/internal/zzejp;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzelu;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/zzegx;->zze(Lcom/google/android/gms/internal/zzegr;)V

    if-ne v2, v8, :cond_4

    iget-object v7, v0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v11}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;)J

    move-result-wide v18

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v10, v0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    move-object/from16 v17, v7

    move-object/from16 v22, v10

    invoke-virtual/range {v17 .. v22}, Lcom/google/android/gms/internal/zzeir;->zza(JZZLcom/google/android/gms/internal/zzeos;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v13, 0x2d

    goto :goto_4

    :cond_4
    if-ne v2, v9, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x2d

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    :goto_4
    new-instance v7, Lcom/google/android/gms/internal/zzeho;

    invoke-direct {v7, v0, v11, v12}, Lcom/google/android/gms/internal/zzeho;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzehy;Lcom/google/firebase/database/DatabaseError;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/16 v7, 0x2d

    goto :goto_2

    :cond_6
    const/4 v7, -0x1

    if-ne v15, v7, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzelc;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    const/4 v2, 0x1

    add-int/2addr v15, v2

    const/4 v2, 0x0

    invoke-interface {v3, v2, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzelc;->setValue(Ljava/lang/Object;)V

    :goto_6
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    move-object v1, v5

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v1, :cond_8

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v11, v11, 0x1

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzegx;->zzn(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_8
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzemq;Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzegl;->zznef:Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzeoz;->zzbz(J)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzegu;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/zzemq;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/zzegl;->zznee:Lcom/google/android/gms/internal/zzemq;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzegu;-><init>([Lcom/google/android/gms/internal/zzemq;)V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zzney:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzeik;->zzg(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfj:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzeir;->zzi(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    const-string v0, "Failed to parse info update"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzemm;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzegu;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzemm;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzelc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;",
            "Lcom/google/android/gms/internal/zzelc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelc;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzehl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzehl;-><init>(Lcom/google/android/gms/internal/zzegx;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzelc;->zza(Lcom/google/android/gms/internal/zzelf;)V

    return-void
.end method

.method private final zzaw(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzell;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfc:Lcom/google/android/gms/internal/zzelp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzelp;->zzay(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzegu;I)Lcom/google/android/gms/internal/zzegu;
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzo(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelc;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznff:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2c

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Aborting transactions for path: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Affected: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfa:Lcom/google/android/gms/internal/zzelc;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzelc;->zzak(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelc;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/zzehm;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzehm;-><init>(Lcom/google/android/gms/internal/zzegx;I)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzelc;->zza(Lcom/google/android/gms/internal/zzele;Z)Z

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzelc;I)V

    new-instance v1, Lcom/google/android/gms/internal/zzehn;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzehn;-><init>(Lcom/google/android/gms/internal/zzegx;I)V

    invoke-virtual {p1, v1, v2, v2}, Lcom/google/android/gms/internal/zzelc;->zza(Lcom/google/android/gms/internal/zzelf;ZZ)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzn(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzemm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzelc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzelc;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzelc;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelc;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzehy;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;)I

    move-result v2

    sget v3, Lcom/google/android/gms/internal/zzehz;->zzngz:I

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzelc;->setValue(Ljava/lang/Object;)V

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzehh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzehh;-><init>(Lcom/google/android/gms/internal/zzegx;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzelc;->zza(Lcom/google/android/gms/internal/zzelf;)V

    return-void
.end method

.method private static zzbd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/google/firebase/database/DatabaseError;->zzbb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zzbe(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzbd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p0

    return-object p0
.end method

.method private final zzbyu()V
    .locals 14

    new-instance v0, Lcom/google/android/gms/internal/zzeeu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zzmwr:Lcom/google/android/gms/internal/zzeia;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeia;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegx;->zzmwr:Lcom/google/android/gms/internal/zzeia;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeia;->zzkal:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzegx;->zzmwr:Lcom/google/android/gms/internal/zzeia;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzeia;->secure:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeeu;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/internal/zzegm;->zza(Lcom/google/android/gms/internal/zzeeu;Lcom/google/android/gms/internal/zzeex;)Lcom/google/android/gms/internal/zzeew;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzegm;->zznej:Lcom/google/android/gms/internal/zzegd;

    new-instance v1, Lcom/google/android/gms/internal/zzehk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzehk;-><init>(Lcom/google/android/gms/internal/zzegx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegd;->zza(Lcom/google/android/gms/internal/zzegf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeew;->initialize()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zzmwr:Lcom/google/android/gms/internal/zzeia;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeia;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegm;->zzqc(Ljava/lang/String;)Lcom/google/android/gms/internal/zzeki;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzeik;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzeik;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zzney:Lcom/google/android/gms/internal/zzeik;

    new-instance v1, Lcom/google/android/gms/internal/zzeil;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzeil;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznez:Lcom/google/android/gms/internal/zzeil;

    new-instance v1, Lcom/google/android/gms/internal/zzelc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzelc;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfa:Lcom/google/android/gms/internal/zzelc;

    new-instance v1, Lcom/google/android/gms/internal/zzeir;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    new-instance v3, Lcom/google/android/gms/internal/zzekh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzekh;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzehp;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzehp;-><init>(Lcom/google/android/gms/internal/zzegx;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzeir;-><init>(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzeki;Lcom/google/android/gms/internal/zzejj;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfj:Lcom/google/android/gms/internal/zzeir;

    new-instance v1, Lcom/google/android/gms/internal/zzeir;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    new-instance v3, Lcom/google/android/gms/internal/zzehr;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzehr;-><init>(Lcom/google/android/gms/internal/zzegx;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzeir;-><init>(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzeki;Lcom/google/android/gms/internal/zzejj;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeki;->zzbvk()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzeos;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzejn;

    new-instance v6, Lcom/google/android/gms/internal/zzeht;

    invoke-direct {v6, p0, v4}, Lcom/google/android/gms/internal/zzeht;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzejn;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v7

    cmp-long v9, v2, v7

    if-gez v9, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/android/gms/internal/zzegx;->zznfi:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzk()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x30

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Restoring overwrite with id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v8, v5}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzi()Lcom/google/android/gms/internal/zzenn;

    move-result-object v8

    invoke-interface {v8, v9}, Lcom/google/android/gms/internal/zzenn;->getValue(Z)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v7, v8, v6}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzi()Lcom/google/android/gms/internal/zzenn;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/util/Map;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v9

    iget-object v6, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzi()Lcom/google/android/gms/internal/zzenn;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;JZZ)Ljava/util/List;

    goto/16 :goto_0

    :cond_1
    iget-object v7, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x2c

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Restoring merge with id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v8, v5}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    iget-object v5, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzj()Lcom/google/android/gms/internal/zzegi;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzegi;->zzcu(Z)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v5, v7, v8, v6}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzj()Lcom/google/android/gms/internal/zzegi;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzegi;Ljava/util/Map;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v9

    iget-object v6, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzj()Lcom/google/android/gms/internal/zzegi;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;Lcom/google/android/gms/internal/zzegi;JZ)Ljava/util/List;

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Write ids were not in order."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/zzegl;->zzneg:Lcom/google/android/gms/internal/zzemq;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzemq;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/zzegl;->zzneh:Lcom/google/android/gms/internal/zzemq;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzemq;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzbyy()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfi:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzegx;->zznfi:J

    return-wide v0
.end method

.method private final zzbyz()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfa:Lcom/google/android/gms/internal/zzelc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzelc;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzelc;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeew;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    return-object p0
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzelc;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzelc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzelc;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeik;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzegx;->zzney:Lcom/google/android/gms/internal/zzeik;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeir;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzegx;->zznfj:Lcom/google/android/gms/internal/zzeir;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeil;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzegx;->zznez:Lcom/google/android/gms/internal/zzeil;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeir;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeoz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    return-object p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzelc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzegx;->zznfa:Lcom/google/android/gms/internal/zzelc;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzegx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbyz()V

    return-void
.end method

.method private final zzn(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;
    .locals 21

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzegx;->zzo(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelc;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzegx;->zzc(Lcom/google/android/gms/internal/zzelc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzehy;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/zzehy;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;)I

    move-result v0

    sget v9, Lcom/google/android/gms/internal/zzehz;->zznhb:I

    const/4 v10, 0x1

    if-ne v0, v9, :cond_3

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzj(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v6

    const/16 v9, -0x19

    if-eq v6, v9, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_3
    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;)I

    move-result v0

    sget v9, Lcom/google/android/gms/internal/zzehz;->zzngx:I

    const/4 v11, 0x0

    if-ne v0, v9, :cond_6

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzk(Lcom/google/android/gms/internal/zzehy;)I

    move-result v0

    const/16 v9, 0x19

    if-lt v0, v9, :cond_4

    const-string v0, "maxretries"

    invoke-static {v0}, Lcom/google/firebase/database/DatabaseError;->zzpm(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    :goto_3
    iget-object v11, v1, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;)J

    move-result-wide v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v6, v1, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/zzeir;->zza(JZZLcom/google/android/gms/internal/zzeos;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    invoke-static {v0}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzenn;)Lcom/google/firebase/database/MutableData;

    move-result-object v0

    :try_start_0
    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzh(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/google/firebase/database/Transaction$Handler;->doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v11

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/google/firebase/database/DatabaseError;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object v9

    move-object/from16 v20, v9

    move-object v9, v0

    move-object/from16 v0, v20

    :goto_4
    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->isSuccess()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    invoke-static {v10}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzeos;)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/util/Map;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v15

    invoke-static {v7, v14}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    invoke-static {v7, v15}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzegx;->zzbyy()J

    move-result-wide v12

    invoke-static {v7, v12, v13}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;J)J

    invoke-interface {v4, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v12, v1, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v13

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;)J

    move-result-wide v16

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzl(Lcom/google/android/gms/internal/zzehy;)Z

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;JZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v12, v1, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/zzeir;->zza(JZZLcom/google/android/gms/internal/zzeos;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_5
    iget-object v12, v1, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;)J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/zzeir;->zza(JZZLcom/google/android/gms/internal/zzeos;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, v9

    goto/16 :goto_2

    :cond_6
    :goto_5
    move-object v0, v11

    :goto_6
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    if-eqz v6, :cond_1

    sget v6, Lcom/google/android/gms/internal/zzehz;->zzngz:I

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;I)I

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zze(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    invoke-static {v7}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/zzeng;->zzj(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzeng;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v6

    new-instance v8, Lcom/google/android/gms/internal/zzehi;

    invoke-direct {v8, v1, v7}, Lcom/google/android/gms/internal/zzehi;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzehy;)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    new-instance v8, Lcom/google/android/gms/internal/zzehj;

    invoke-direct {v8, v1, v7, v0, v6}, Lcom/google/android/gms/internal/zzehj;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzehy;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/internal/zzegx;->zznfa:Lcom/google/android/gms/internal/zzelc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzelc;)V

    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzegx;->zzn(Ljava/lang/Runnable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzegx;->zzbyz()V

    :cond_9
    return-object v2
.end method

.method private final zzo(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelc;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            ")",
            "Lcom/google/android/gms/internal/zzelc<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehy;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfa:Lcom/google/android/gms/internal/zzelc;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelc;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzegu;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzemq;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzegu;-><init>([Lcom/google/android/gms/internal/zzemq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzelc;->zzak(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyr()Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getDatabase()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfl:Lcom/google/firebase/database/FirebaseDatabase;

    return-object v0
.end method

.method final interrupt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeew;->interrupt(Ljava/lang/String;)V

    return-void
.end method

.method public final onDisconnect()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/zzegl;->zzneh:Lcom/google/android/gms/internal/zzemq;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzemq;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzeos;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznez:Lcom/google/android/gms/internal/zzeil;

    new-instance v2, Lcom/google/android/gms/internal/zzeil;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzeil;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzegu;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/google/android/gms/internal/zzeii;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/zzeii;-><init>(Lcom/google/android/gms/internal/zzeil;Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzeil;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzeip;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/zzehb;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzehb;-><init>(Lcom/google/android/gms/internal/zzegx;Ljava/util/List;)V

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/zzeil;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzeip;)V

    new-instance v1, Lcom/google/android/gms/internal/zzeil;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzeil;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznez:Lcom/google/android/gms/internal/zzeil;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    return-void
.end method

.method public final purgeOutstandingWrites()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Purging writes"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeir;->zzbze()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzegu;->zzbyn()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    const/16 v1, -0x19

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzegu;I)Lcom/google/android/gms/internal/zzegu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeew;->purgeOutstandingWrites()V

    return-void
.end method

.method final resume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeew;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmwr:Lcom/google/android/gms/internal/zzeia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeia;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzegi;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const-string v1, "update: "

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v3, v5}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfg:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfg:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzegi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    const-string p4, "update called with no changes. No-op"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p4, v3, v0}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, p3, v3, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzegu;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzeos;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzegi;Ljava/util/Map;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbyy()J

    move-result-wide v8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;Lcom/google/android/gms/internal/zzegi;JZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzehw;

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/zzehw;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, p4, v2}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzegi;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p3

    const/16 p4, -0x9

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzegu;I)Lcom/google/android/gms/internal/zzegu;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzegx;->zzn(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "set: "

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v1, v5}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfg:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfg:Lcom/google/android/gms/internal/zzemm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzeos;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/util/Map;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbyy()J

    move-result-wide v9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, v9

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;JZZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/zzenn;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    new-instance v2, Lcom/google/android/gms/internal/zzehv;

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move-wide v8, v9

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/zzehv;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    const/16 p2, -0x9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzegu;I)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzn(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzeha;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/zzeha;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzeew;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/Transaction$Handler;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    iget-object v0, v1, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "transaction: "

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v13, v5}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/zzegx;->zznfg:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v13, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzegm;->zzmzx:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/google/android/gms/internal/zzegx;->zznfm:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzegx;->zznfm:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/zzegx;->zznff:Lcom/google/android/gms/internal/zzemm;

    const-string v2, "runTransaction() usage detected while persistence is enabled. Please be aware that transactions *will not* be persisted across database restarts.  See https://www.firebase.com/docs/android/guide/offline-capabilities.html#section-handling-transactions-offline for more details."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzemm;->info(Ljava/lang/String;)V

    :cond_2
    invoke-static/range {p0 .. p1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v14

    new-instance v5, Lcom/google/android/gms/internal/zzehc;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/zzehc;-><init>(Lcom/google/android/gms/internal/zzegx;)V

    new-instance v0, Lcom/google/android/gms/internal/zzejp;

    invoke-virtual {v14}, Lcom/google/firebase/database/Query;->zzbvi()Lcom/google/android/gms/internal/zzelu;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/zzejp;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzelu;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzegx;->zzf(Lcom/google/android/gms/internal/zzegr;)V

    new-instance v15, Lcom/google/android/gms/internal/zzehy;

    sget v6, Lcom/google/android/gms/internal/zzehz;->zzngw:I

    iget-wide v8, v1, Lcom/google/android/gms/internal/zzegx;->zznfn:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    iput-wide v2, v1, Lcom/google/android/gms/internal/zzegx;->zznfn:J

    const/4 v10, 0x0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/zzehy;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJLcom/google/android/gms/internal/zzegy;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v11, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    invoke-static {v0}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzenn;)Lcom/google/firebase/database/MutableData;

    move-result-object v0

    :try_start_0
    invoke-interface {v12, v0}, Lcom/google/firebase/database/Transaction$Handler;->doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v2, v13

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Transaction returned null as result"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/google/firebase/database/DatabaseError;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object v2

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    invoke-static {v15}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeng;->zzj(Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzeng;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzeng;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/zzehd;

    invoke-direct {v3, v1, v12, v2, v0}, Lcom/google/android/gms/internal/zzehd;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzegx;->zzn(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    sget v2, Lcom/google/android/gms/internal/zzehz;->zzngx:I

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;I)I

    iget-object v2, v1, Lcom/google/android/gms/internal/zzegx;->zznfa:Lcom/google/android/gms/internal/zzelc;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/zzelc;->zzak(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzelc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelc;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzelc;->setValue(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzeos;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->zzbve()Lcom/google/android/gms/internal/zzenn;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/zzeih;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/util/Map;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v5

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    invoke-static {v15, v5}, Lcom/google/android/gms/internal/zzehy;->zzc(Lcom/google/android/gms/internal/zzehy;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzegx;->zzbyy()J

    move-result-wide v2

    invoke-static {v15, v2, v3}, Lcom/google/android/gms/internal/zzehy;->zza(Lcom/google/android/gms/internal/zzehy;J)J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-static {v15}, Lcom/google/android/gms/internal/zzehy;->zzb(Lcom/google/android/gms/internal/zzehy;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzenn;JZZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzegx;->zzbyz()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegu;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzegu;",
            "Lcom/google/android/gms/internal/zzenn;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzegz;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzegz;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, p4, v2}, Lcom/google/android/gms/internal/zzeew;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzelu;Z)V

    return-void
.end method

.method final zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzegu;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzegu;->zzbyt()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemq;->zzcca()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzegu;->zzbys()Lcom/google/android/gms/internal/zzegu;

    move-result-object p3

    :cond_0
    invoke-static {p0, p3}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/zzehu;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzehu;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzn(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "onDataUpdate: "

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xe

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v1, v5}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfg:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xf

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfh:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfh:J

    if-eqz p4, :cond_4

    :try_start_0
    new-instance p1, Lcom/google/android/gms/internal/zzejk;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/zzejk;-><init>(J)V

    if-eqz p3, :cond_3

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzegu;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {v2, p4}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {p2, v0, p3, p1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/Map;Lcom/google/android/gms/internal/zzejk;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {p3, v0, p2, p1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzejk;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_6

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p4

    new-instance v1, Lcom/google/android/gms/internal/zzegu;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzeir;->zzi(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)Ljava/util/List;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzn(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    const-string p3, "FIREBASE INTERNAL ERROR"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzemm;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzefn;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "onRangeMergeUpdate: "

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v1, v5}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfg:Lcom/google/android/gms/internal/zzemm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzemm;->zzcbu()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzegx;->zznfe:Lcom/google/android/gms/internal/zzemm;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x15

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/gms/internal/zzemm;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfh:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzegx;->zznfh:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzefn;

    new-instance v2, Lcom/google/android/gms/internal/zzenu;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzenu;-><init>(Lcom/google/android/gms/internal/zzefn;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    if-eqz p3, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzejk;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzejk;-><init>(J)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzeir;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;Lcom/google/android/gms/internal/zzejk;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzeir;->zzb(Lcom/google/android/gms/internal/zzegu;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzegx;->zzn(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    return-void
.end method

.method public final zzak(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzemq;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzncx:Lcom/google/android/gms/internal/zzeew;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegu;->zzbyp()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/zzenn;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzehx;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzeew;->zzb(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/zzefo;)V

    return-void
.end method

.method public final zzbwt()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzegl;->zzneh:Lcom/google/android/gms/internal/zzemq;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzemq;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzbyv()Lcom/google/android/gms/internal/zzeia;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmwr:Lcom/google/android/gms/internal/zzeia;

    return-object v0
.end method

.method public final zzbyw()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznex:Lcom/google/android/gms/internal/zzeoz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeoz;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method final zzbyx()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfj:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeir;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeir;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzcs(Z)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzegl;->zzneg:Lcom/google/android/gms/internal/zzemq;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzemq;Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/zzegr;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzegl;->zznee:Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegr;->zzbxy()Lcom/google/android/gms/internal/zzelu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfj:Lcom/google/android/gms/internal/zzeir;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeir;->zzh(Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzegr;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegr;->zzbxy()Lcom/google/android/gms/internal/zzelu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzegl;->zznee:Lcom/google/android/gms/internal/zzemq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfj:Lcom/google/android/gms/internal/zzeir;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfk:Lcom/google/android/gms/internal/zzeir;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeir;->zzg(Lcom/google/android/gms/internal/zzegr;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzegx;->zzaw(Ljava/util/List;)V

    return-void
.end method

.method public final zzn(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegm;->zzbyf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzegm;->zznei:Lcom/google/android/gms/internal/zzegt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzegt;->zzn(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzp(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegm;->zzbyf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegx;->zznfd:Lcom/google/android/gms/internal/zzegm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzegm;->zznek:Lcom/google/android/gms/internal/zzeig;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzeig;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method

.class public final Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/PlaceEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private zzbzd:Ljava/lang/String;

.field private zziux:Lcom/google/android/gms/maps/model/LatLng;

.field private zziuy:Ljava/lang/String;

.field private zziva:Ljava/lang/String;

.field private zzivb:Landroid/net/Uri;

.field private zzixp:F

.field private zzixq:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzixs:Z

.field private zzixt:F

.field private zzixu:I

.field private zzixx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzixy:Lcom/google/android/gms/location/places/internal/zzan;

.field private zziya:Ljava/lang/String;

.field private zziyd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zziye:Lcom/google/android/gms/location/places/internal/zzag;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixu:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixt:F

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/location/places/internal/zzag;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziye:Lcom/google/android/gms/location/places/internal/zzag;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/location/places/internal/zzan;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixy:Lcom/google/android/gms/location/places/internal/zzan;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziux:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixq:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public final zzaf(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziyd:Ljava/util/List;

    return-object p0
.end method

.method public final zzag(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixx:Ljava/util/List;

    return-object p0
.end method

.method public final zzaxk()Lcom/google/android/gms/location/places/internal/PlaceEntity;
    .locals 30

    move-object/from16 v0, p0

    new-instance v23, Lcom/google/android/gms/location/places/internal/PlaceEntity;

    move-object/from16 v1, v23

    iget-object v2, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbzd:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziyd:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v15, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->mName:Ljava/lang/String;

    move-object v6, v15

    iget-object v14, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziuy:Ljava/lang/String;

    move-object v7, v14

    iget-object v13, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziva:Ljava/lang/String;

    move-object v8, v13

    const/4 v9, 0x0

    iget-object v12, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixx:Ljava/util/List;

    move-object v10, v12

    iget-object v11, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziux:Lcom/google/android/gms/maps/model/LatLng;

    iget v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixp:F

    move-object/from16 v20, v12

    move v12, v5

    iget-object v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixq:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v21, v13

    move-object v13, v5

    const/4 v5, 0x0

    move-object/from16 v22, v14

    move-object v14, v5

    iget-object v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzivb:Landroid/net/Uri;

    move-object/from16 v25, v15

    move-object v15, v5

    iget-boolean v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixs:Z

    move/from16 v16, v5

    iget v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixt:F

    move/from16 v17, v5

    iget v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixu:I

    move/from16 v18, v5

    new-instance v24, Lcom/google/android/gms/location/places/internal/zzal;

    move-object/from16 v19, v24

    const/16 v28, 0x0

    move-object/from16 v26, v22

    move-object/from16 v27, v21

    move-object/from16 v29, v20

    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/location/places/internal/zzal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixy:Lcom/google/android/gms/location/places/internal/zzan;

    move-object/from16 v20, v5

    iget-object v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziye:Lcom/google/android/gms/location/places/internal/zzag;

    move-object/from16 v21, v5

    iget-object v5, v0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziya:Ljava/lang/String;

    move-object/from16 v22, v5

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v22}, Lcom/google/android/gms/location/places/internal/PlaceEntity;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFILcom/google/android/gms/location/places/internal/zzal;Lcom/google/android/gms/location/places/internal/zzan;Lcom/google/android/gms/location/places/internal/zzag;Ljava/lang/String;)V

    return-object v23
.end method

.method public final zzbp(Z)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixs:Z

    return-object p0
.end method

.method public final zzc(F)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixp:F

    return-object p0
.end method

.method public final zzd(F)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixt:F

    return-object p0
.end method

.method public final zzem(I)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzixu:I

    return-object p0
.end method

.method public final zzio(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzbzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzip(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final zziq(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziuy:Ljava/lang/String;

    return-object p0
.end method

.method public final zzir(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziva:Ljava/lang/String;

    return-object p0
.end method

.method public final zzis(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zziya:Ljava/lang/String;

    return-object p0
.end method

.method public final zzo(Landroid/net/Uri;)Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/PlaceEntity$zza;->zzivb:Landroid/net/Uri;

    return-object p0
.end method

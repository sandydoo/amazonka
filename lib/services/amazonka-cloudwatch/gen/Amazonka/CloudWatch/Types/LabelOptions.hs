{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CloudWatch.Types.LabelOptions
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CloudWatch.Types.LabelOptions where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | This structure includes the @Timezone@ parameter, which you can use to
-- specify your time zone so that the labels that are associated with
-- returned metrics display the correct time for your time zone.
--
-- The @Timezone@ value affects a label only if you have a time-based
-- dynamic expression in the label. For more information about dynamic
-- expressions in labels, see
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html Using Dynamic Labels>.
--
-- /See:/ 'newLabelOptions' smart constructor.
data LabelOptions = LabelOptions'
  { -- | The time zone to use for metric data return in this operation. The
    -- format is @+@ or @-@ followed by four digits. The first two digits
    -- indicate the number of hours ahead or behind of UTC, and the final two
    -- digits are the number of minutes. For example, +0130 indicates a time
    -- zone that is 1 hour and 30 minutes ahead of UTC. The default is +0000.
    timezone :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LabelOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timezone', 'labelOptions_timezone' - The time zone to use for metric data return in this operation. The
-- format is @+@ or @-@ followed by four digits. The first two digits
-- indicate the number of hours ahead or behind of UTC, and the final two
-- digits are the number of minutes. For example, +0130 indicates a time
-- zone that is 1 hour and 30 minutes ahead of UTC. The default is +0000.
newLabelOptions ::
  LabelOptions
newLabelOptions =
  LabelOptions' {timezone = Prelude.Nothing}

-- | The time zone to use for metric data return in this operation. The
-- format is @+@ or @-@ followed by four digits. The first two digits
-- indicate the number of hours ahead or behind of UTC, and the final two
-- digits are the number of minutes. For example, +0130 indicates a time
-- zone that is 1 hour and 30 minutes ahead of UTC. The default is +0000.
labelOptions_timezone :: Lens.Lens' LabelOptions (Prelude.Maybe Prelude.Text)
labelOptions_timezone = Lens.lens (\LabelOptions' {timezone} -> timezone) (\s@LabelOptions' {} a -> s {timezone = a} :: LabelOptions)

instance Prelude.Hashable LabelOptions where
  hashWithSalt _salt LabelOptions' {..} =
    _salt `Prelude.hashWithSalt` timezone

instance Prelude.NFData LabelOptions where
  rnf LabelOptions' {..} = Prelude.rnf timezone

instance Data.ToQuery LabelOptions where
  toQuery LabelOptions' {..} =
    Prelude.mconcat ["Timezone" Data.=: timezone]

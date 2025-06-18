-- clear cache so this reloads changes.
-- useful for development
package.loaded["sigma"] = nil
package.loaded["sigma.colors"] = nil
package.loaded["sigma.theme"] = nil
package.loaded["sigma.util"] = nil

require("sigma").setup()

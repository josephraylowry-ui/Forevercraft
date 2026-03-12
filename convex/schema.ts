import { defineSchema, defineTable } from 'convex/server'
import { v } from 'convex/values'

export default defineSchema({
  artifacts: defineTable({
    name: v.string(),
    tier: v.string(),
    type: v.string(),
    description: v.string(),
    abilities: v.array(v.string())
  })
})
